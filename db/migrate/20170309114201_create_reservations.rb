class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :time
      t.text :message
      t.references :cuisine, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
