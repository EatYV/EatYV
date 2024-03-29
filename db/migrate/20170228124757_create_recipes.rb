class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.decimal :price
      t.references :cuisine, foreign_key: true
      t.references :chef, foreign_key: true

      t.timestamps
    end
  end
end
