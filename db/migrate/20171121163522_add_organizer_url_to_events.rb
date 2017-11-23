class AddOrganizerUrlToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :organizer_url, :string
    add_column :events, :instagram_url, :string
  end
end
