# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_03_190454) do

  create_table "baits", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "image"
    t.integer "tackle_box_items_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_baits_on_name", unique: true
  end

  create_table "fish_catches", force: :cascade do |t|
    t.string "species"
    t.decimal "weight"
    t.decimal "length"
    t.integer "likes_count", default: 0
    t.integer "bait_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bait_id"], name: "index_fish_catches_on_bait_id"
    t.index ["user_id"], name: "index_fish_catches_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "fish_catch_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fish_catch_id"], name: "index_likes_on_fish_catch_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "tackle_box_items", force: :cascade do |t|
    t.integer "bait_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bait_id"], name: "index_tackle_box_items_on_bait_id"
    t.index ["user_id"], name: "index_tackle_box_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "fish_catches", "baits"
  add_foreign_key "fish_catches", "users"
  add_foreign_key "likes", "fish_catches"
  add_foreign_key "likes", "users"
  add_foreign_key "tackle_box_items", "baits"
  add_foreign_key "tackle_box_items", "users"
end
