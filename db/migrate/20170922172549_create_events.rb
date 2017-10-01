class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string        :name, null: false
      t.string        :description
      t.integer       :price_type, null: false
      t.integer       :capacity
      t.datetime      :event_start, null: false
      t.datetime      :event_end
      t.datetime      :recruit_start
      t.datetime      :recruit_end
      t.string        :image
      t.text          :article
      t.string        :place, null: false
      t.string        :place_url
      t.integer       :postcode
      t.string        :prefecture, null: false, index: true
      t.string        :city
      t.string        :address1
      t.string        :address2
      t.string        :map
      t.integer       :tel1, null: false
      t.integer       :tel2, null: false
      t.integer       :tel3, null: false
      t.string        :email, null: false
      t.string        :organizer, null: false
      t.string        :facebook_url
      t.string        :twitter_url
      t.references    :user, index: true
      t.timestamps
    end
  end
end
