class RemoveMapFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :map, :string
  end
end
