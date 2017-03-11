class Cuisine < ApplicationRecord
  belongs_to :chef
  has_many :recipes, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
