class Recipe < ApplicationRecord
  belongs_to :cuisine
  belongs_to :chef
end
