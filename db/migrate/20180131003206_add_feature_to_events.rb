class AddFeatureToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :feature, :string
    add_column :events, :feature_code, :integer
  end
end
