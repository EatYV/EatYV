class AddPhoneToChefs < ActiveRecord::Migration[5.0]
  def change
    add_column :chefs, :phone, :string
    add_index :chefs, :phone, unique: true
  end
end
