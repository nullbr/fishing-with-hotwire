class User < ApplicationRecord
  has_secure_password

  has_many :tackle_box_items, dependent: :destroy
  has_many :fish_catches, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :username, presence: true,
            uniqueness: { case_sensitive: false }

  def filter_catches(params={})
    associations = {"bait" => "baits.name"}

    sort_column =
      params[:sort]
        .presence_in(%w{ bait species weight length }) || "created_at"

    sort_column = associations[sort_column] || sort_column

    sort_direction =
      params[:direction].presence_in(%w{ asc desc }) || "desc"

    fish_catches
      .includes(:bait)
      .with_bait_name(params[:bait])
      .with_species(params[:species])
      .with_weight_between(params[:min_weight], params[:max_weight])
      .order(sort_column => sort_direction)
  end

  def min_catch_weight
    (fish_catches.minimum(:weight) || 0).floor
  end

  def max_catch_weight
    (fish_catches.maximum(:weight) || 0).round
  end

  def tackle_box_item_for_most_recent_catch
    return nil if tackle_box_items.empty?

    if most_recent_catch = fish_catches.order(created_at: :desc).first
      item = tackle_box_items.find_by(bait_id: most_recent_catch.bait_id)
      item || tackle_box_items.first
    else
      tackle_box_items.first
    end
  end

  def assign_my_tackle_box_items_to_baits(baits)
    my_items = tackle_box_items.where(bait: baits)
    baits.map do |bait|
      bait.my_tackle_box_item =
        my_items.find { |i| i.bait_id == bait.id }
      bait
    end
  end

  def assign_my_likes_to_catches(fish_catches)
    my_likes = likes.where(fish_catch: fish_catches)
    fish_catches.map do |fish_catch|
      fish_catch.my_like =
        my_likes.find { |l| l.fish_catch_id == fish_catch.id }
      fish_catch
    end
  end
end
