class AddOrderToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :title, :string
    add_column :reservations, :price, :decimal
  end
end
