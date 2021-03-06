class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :phone_number
      t.boolean :ride_status
      t.integer :total_rides
      t.references :user

      t.timestamps
    end
  end
end
