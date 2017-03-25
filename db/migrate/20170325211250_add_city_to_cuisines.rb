class AddCityToCuisines < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :city, :string
  end
end
