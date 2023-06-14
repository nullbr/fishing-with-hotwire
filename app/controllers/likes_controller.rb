# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :require_signin
  before_action :find_fish_catch

  def create
    return if existing_like

    like = @fish_catch.likes.create!(user: current_user)
    @fish_catch.my_like = like

    render partial: 'activity/catch_likes',
           locals: { fish_catch: @fish_catch }
  end

  def destroy
    return unless (like = existing_like)

    like.destroy!

    render partial: 'activity/catch_likes',
           locals: { fish_catch: @fish_catch }
  end

  private

  def find_fish_catch
    @fish_catch = FishCatch.find(params[:fish_catch_id])
  end

  def existing_like
    @fish_catch.likes.where(user: current_user).first
  end
end
