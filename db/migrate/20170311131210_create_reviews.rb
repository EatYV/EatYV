class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :grades
      t.text :comments

      t.timestamps
    end
  end
end
