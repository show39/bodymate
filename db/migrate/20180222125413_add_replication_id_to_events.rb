class AddReplicationIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :replication_id, :integer
  end
end
