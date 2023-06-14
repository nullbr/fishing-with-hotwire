# frozen_string_literal: true

class Like < ApplicationRecord
  include ActionView::RecordIdentifier

  belongs_to :user
  belongs_to :fish_catch, counter_cache: true

  after_create_commit lambda {
    broadcast_update_later_to 'activity', target: "#{dom_id(fish_catch)}_likes_count",
                                          html: fish_catch.likes_count
  }

  after_destroy_commit lambda {
    broadcast_update_later_to 'activity', target: "#{dom_id(fish_catch)}_likes_count",
                                          html: fish_catch.likes_count,
                                          locals: { like: nil }
  }
end
