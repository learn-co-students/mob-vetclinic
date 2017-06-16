class Owner < ApplicationRecord
  has_many :pets
  has_many :appointments, through: :pets
  accepts_nested_attributes_for :pets
  
end
