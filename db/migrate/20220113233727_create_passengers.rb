class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.integer :phone_number
      t.integer :pick_up_time
      t.integer :ride_rate
      t.boolean :ride_status
      t.integer :passenger_id

      t.timestamps
    end
  end
end
