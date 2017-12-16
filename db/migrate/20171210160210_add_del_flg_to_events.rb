class AddDelFlgToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :del_flg, :boolean, default: false, null: false
  end
end
