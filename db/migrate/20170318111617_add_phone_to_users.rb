class AddPhoneToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone, :string
    add_index :users, :phone, unique: true
  end
end
