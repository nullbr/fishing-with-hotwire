class BaitsController < ApplicationController

  def index
    @baits = Bait.search(params)

    @bait_categories = Bait.pluck(:category).uniq

    if signed_in?
      @baits = current_user.assign_my_tackle_box_items_to_baits(@baits)
    end
  end

  def show
    @bait = Bait.find(params[:id])

    @top_catches =
      @bait.fish_catches.order(weight: :desc).limit(10).includes(:user)
  end

end
