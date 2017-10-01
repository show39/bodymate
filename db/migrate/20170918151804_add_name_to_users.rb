class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :title, :string
    add_column :users, :profile, :text
    add_column :users, :icon, :string
    add_column :users, :role, :integer
    change_column :users, :name, :string, null: false
  end
end
