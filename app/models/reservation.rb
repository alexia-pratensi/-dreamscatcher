class Reservation < ApplicationRecord
  belongs_to :dream
  belongs_to :user
  validates :date, presence: true
end
