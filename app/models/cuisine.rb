class Cuisine < ApplicationRecord
  belongs_to :chef
  has_many :recipes, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
