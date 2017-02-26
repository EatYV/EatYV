class AddThingsToCuisines < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :about, :text
    add_column :cuisines, :availability, :string
    add_column :cuisines, :location, :string
    add_column :cuisines, :average_price, :integer
  end
end
