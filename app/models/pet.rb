class Pet < ApplicationRecord
  belongs_to :owner
  has_many :appointments
  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :health, presence: true
end
