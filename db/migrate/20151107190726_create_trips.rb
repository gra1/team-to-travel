class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :destination
      t.date :start_at
      t.date :end_date
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
