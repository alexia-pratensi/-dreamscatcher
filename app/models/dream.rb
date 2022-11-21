class Dream < ApplicationRecord
  has_many :reservations
  belongs_to :user # loueur
end
