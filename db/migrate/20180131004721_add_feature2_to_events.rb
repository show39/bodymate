class AddFeature2ToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :feature2, :string
    add_column :events, :feature2_code, :integer
  end
end
