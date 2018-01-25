class AddPrefectureCodeToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :prefecture_code, :integer
    add_column :events, :sports_type, :string
    add_column :events, :sports_type_code, :integer
  end
end
