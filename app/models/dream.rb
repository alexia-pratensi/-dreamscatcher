class Dream < ApplicationRecord
  has_many :reservations
  belongs_to :user # loueur
  has_one_attached :photo
end
