class RemovePriceTypeFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :price_type, :integer
  end
end
