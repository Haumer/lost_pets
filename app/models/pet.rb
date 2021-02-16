class Pet < ApplicationRecord
  SPECIES = ["Dog", "Cat", "Hamster", "Parrot", "Bear", "Pufferfish"]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES, message: "%{value} is not a valid species"  }
end
