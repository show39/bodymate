class RemoveCapacityFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :capacity, :integer
  end
end
