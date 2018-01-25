class RemoveDelFlgFromBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :del_flg
  end
end
