class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.integer :phone_number
      t.integer :passenger_id

      t.timestamps
    end
  end
end
