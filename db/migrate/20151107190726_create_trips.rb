class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :destination
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.integer :owner_id

      t.timestamps null: false
    end

    add_index :trips, :destination
  end
end
