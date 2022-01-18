class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :passenger_id
      t.integer :price
      t.integer :pick_up_longitude
      t.integer :pick_up_latitude
      t.integer :drop_off_longitude
      t.integer :drop_off_latitude

      t.timestamps
    end
  end
end
