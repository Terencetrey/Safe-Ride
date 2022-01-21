class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.references :driver, :passenger
      t.integer :price
      t.integer :pick_up_longitude
      t.integer :pick_up_latitude
      t.integer :drop_off_longitude
      t.integer :drop_off_latitude

      t.timestamps
    end
  end
end
