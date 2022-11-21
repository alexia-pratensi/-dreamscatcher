class Reservation < ApplicationRecord
  belongs_to :dreams
  belongs_to :users
end
