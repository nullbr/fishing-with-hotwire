class ActivityController < ApplicationController
  before_action :require_signin

  def index
    @fish_catches = FishCatch.order(created_at: :desc).includes(:user, :bait)

    @fish_catches = current_user.assign_my_likes_to_catches(@fish_catches)
  end
end
