# frozen_string_literal: true

class FishCatch < ApplicationRecord
  belongs_to :bait
  belongs_to :user
  has_many :likes, dependent: :destroy

  SPECIES = [
    'Brown Trout',
    'Rainbow Trout',
    'Lake Trout',
    'Largemouth Bass',
    'Smallmouth Bass',
    'Bluegill',
    'Walleye'
  ].freeze

  validates :species, presence: true,
                      inclusion: {
                        in: SPECIES,
                        message: '%<value>s is not a valid species'
                      }

  validates :weight, :length,
            presence: true,
            numericality: { greater_than: 0 }

  attr_accessor :my_like

  scope :with_species, lambda { |species|
    where(species:) if species.present?
  }

  scope :with_bait_name, lambda { |bait_name|
    where(baits: { name: bait_name }) if bait_name.present?
  }

  scope :with_weight_between, lambda { |low, high|
    where(weight: low..high) if low.present? && high.present?
  }
end
