class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.integer :pick_up_time
      t.integer :amount
      t.integer :pick_up_longitude
      t.integer :pick_up_latitude
      t.integer :drop_off_longitude
      t.integer :drop_off_latitude
      t.integer :passenger_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
