class CreateOption < ActiveRecord::Migration[5.1]
  def change
    change_column_null :events, :tel, false
  end
end
