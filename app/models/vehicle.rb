class Vehicle < ApplicationRecord
  validates :vin, presence: true
  validates :manufacture, presence: true

  
end
