class AddReferencesToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :cuisine, foreign_key: true
  end
end
