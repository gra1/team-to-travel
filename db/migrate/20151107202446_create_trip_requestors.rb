class CreateTripRequestors < ActiveRecord::Migration
  def change
    create_table :trip_requests do |t|
      t.integer :trip_id
      t.integer :requestor_id

      t.timestamps null: false
    end
  end
end
