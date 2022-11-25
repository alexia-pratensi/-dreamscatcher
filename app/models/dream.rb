class Dream < ApplicationRecord
  has_many :reservations
  belongs_to :user # loueur
  has_one_attached :photo
  validates :name, presence: true
  validates :details, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :content, presence: true
end
