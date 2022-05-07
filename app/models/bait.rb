class Bait < ApplicationRecord
  has_many :fish_catches

  validates :name, presence: true, uniqueness: true
  validates :category, :image, presence: true

  attr_accessor :my_tackle_box_item

  scope :with_name, ->(name) {
    where("lower(name) LIKE ?", "%#{name.downcase}%") if name.present?
  }

  scope :with_category, ->(category) {
    where(category: category) if category.present?
  }

  def self.search(params={})
    sort_column =
      params[:sort]
        .presence_in(%w{ name tackle_box_items_count }) || "id"

    sort_direction =
      sort_column == "tackle_box_items_count" ? :desc : :asc

    self
      .with_name(params[:name])
      .with_category(params[:category])
      .order(sort_column => sort_direction)
  end
end
