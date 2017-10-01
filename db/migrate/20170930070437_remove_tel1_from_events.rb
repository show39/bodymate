class RemoveTel1FromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :tel1, :integer
    remove_column :events, :tel2, :integer
    remove_column :events, :tel3, :integer
    add_column :events, :tel, :string
  end
end
