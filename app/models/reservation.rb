class Reservation < ApplicationRecord
  belongs_to :cuisine
  belongs_to :user
end
