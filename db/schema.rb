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

ActiveRecord::Schema.define(version: 20180713011725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "likes", force: :cascade do |t|
    t.integer "proverb_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "proverb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proverbs", force: :cascade do |t|
    t.string "proverb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_proverbs_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "proverb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proverb_id"], name: "index_user_proverbs_users_on_proverb_id"
    t.index ["user_id", "proverb_id"], name: "index_user_proverbs_users_on_user_id_and_proverb_id", unique: true
    t.index ["user_id"], name: "index_user_proverbs_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
