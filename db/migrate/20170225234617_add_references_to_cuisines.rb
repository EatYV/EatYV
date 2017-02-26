class AddReferencesToCuisines < ActiveRecord::Migration[5.0]
  def change
    add_reference :cuisines, :chef, foreign_key: true
  end
end
