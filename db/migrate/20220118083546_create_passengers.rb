class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :phone_number
      t.references :user
      t.string :gender


      t.timestamps
    end
  end
end
