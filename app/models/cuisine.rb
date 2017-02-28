class Cuisine < ApplicationRecord
  belongs_to :chef
  has_many :recipes
end
