class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :phone_number
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
