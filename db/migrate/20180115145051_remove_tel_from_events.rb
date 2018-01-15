class RemoveTelFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :tel, :string
  end
end
