class Recipe < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :cuisine
  belongs_to :chef
end
