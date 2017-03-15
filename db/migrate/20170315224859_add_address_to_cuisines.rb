class AddAddressToCuisines < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :address, :string
  end
end
