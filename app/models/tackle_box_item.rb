class TackleBoxItem < ApplicationRecord
  belongs_to :user
  belongs_to :bait, counter_cache: true
end
