class AddDelFlgToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :del_flg, :boolean, default: false, null: false
  end
end
