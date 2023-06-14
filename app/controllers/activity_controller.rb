# frozen_string_literal: true

class ActivityController < ApplicationController
  before_action :require_signin

  def index
    @pagy, @fish_catches = pagy(FishCatch.order(created_at: :desc).includes(:user, :bait), items: 5)

    @fish_catches = current_user.assign_my_likes_to_catches(@fish_catches)
  end
end
