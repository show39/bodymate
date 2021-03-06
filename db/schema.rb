# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180222125413) do

  create_table "bookings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.bigint "ticket_id"
    t.string "name", null: false
    t.string "email", null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "del_flg", default: false, null: false
    t.index ["ticket_id"], name: "index_bookings_on_ticket_id"
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "event_start", null: false
    t.datetime "event_end"
    t.datetime "recruit_start"
    t.datetime "recruit_end"
    t.string "image"
    t.text "article"
    t.string "place", null: false
    t.string "place_url"
    t.integer "postcode"
    t.string "prefecture", null: false
    t.string "city"
    t.string "address1"
    t.string "address2"
    t.string "email", null: false
    t.string "organizer", null: false
    t.string "facebook_url"
    t.string "twitter_url"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "organizer_url"
    t.string "instagram_url"
    t.boolean "del_flg", default: false, null: false
    t.integer "prefecture_code"
    t.string "sports_type"
    t.integer "sports_type_code"
    t.string "feature"
    t.integer "feature_code"
    t.string "feature2"
    t.integer "feature2_code"
    t.string "address"
    t.float "latitude", limit: 24
    t.float "longitude", limit: 24
    t.integer "replication_id"
    t.index ["prefecture"], name: "index_events_on_prefecture"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "tickets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.integer "quantity", null: false
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_tickets_on_event_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.string "title"
    t.text "profile"
    t.string "icon"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "tickets"
  add_foreign_key "tickets", "events"
end
