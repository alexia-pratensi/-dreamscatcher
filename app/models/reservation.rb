class Reservation < ApplicationRecord
  belongs_to :dream
  belongs_to :user
end
