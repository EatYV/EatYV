class Review < ApplicationRecord
  belongs_to :cuisine
  belongs_to :user
  #validates_presence_of :grade
  #validates_presence_of :comment
end
