class FishCatch < ApplicationRecord
  belongs_to :bait
  belongs_to :user
  has_many :likes, dependent: :destroy

  SPECIES = [
    "Brown Trout",
    "Rainbow Trout",
    "Lake Trout",
    "Largemouth Bass",
    "Smallmouth Bass",
    "Bluegill",
    "Walleye"
  ]

  validates :species, presence: true,
            inclusion: {
              in: SPECIES,
              message: "%{value} is not a valid species"
            }

  validates :weight, :length,
            presence: true,
            numericality: { greater_than: 0 }

  attr_accessor :my_like

  scope :with_species, ->(species) {
    where(species: species) if species.present?
  }

  scope :with_bait_name, ->(bait_name) {
    where(baits: {name: bait_name}) if bait_name.present?
  }

  scope :with_weight_between, ->(low, high) {
    where(weight: low..high) if low.present? && high.present?
  }
end
