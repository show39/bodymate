class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.references :ticket, foreign_key: true, index: true
      t.string :name, null: false
      t.string :email, null: false
      t.string :comment

      t.timestamps
    end
  end
end
