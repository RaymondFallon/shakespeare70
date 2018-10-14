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

ActiveRecord::Schema.define(version: 20180802015909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bio_types", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_bio_types_on_code", unique: true
  end

  create_table "castings", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "production_id"
    t.bigint "position_id"
    t.bigint "bio_type_id"
    t.string "role"
    t.integer "cast_order"
    t.string "selected", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bio_type_id"], name: "index_castings_on_bio_type_id"
    t.index ["member_id"], name: "index_castings_on_member_id"
    t.index ["position_id"], name: "index_castings_on_position_id"
    t.index ["production_id"], name: "index_castings_on_production_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "exec_committee", limit: 1
    t.string "featured", limit: 1
    t.string "photo_url"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.integer "bio_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_positions_on_code", unique: true
  end

  create_table "productions", force: :cascade do |t|
    t.string "title"
    t.bigint "company_id"
    t.bigint "venue_id"
    t.date "start_date"
    t.date "end_date"
    t.integer "year"
    t.string "schedule_desc"
    t.text "description"
    t.string "has_all_data", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_productions_on_company_id"
    t.index ["venue_id"], name: "index_productions_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "suite_address"
    t.string "town"
    t.string "state", limit: 2
    t.string "zipcode", limit: 5
    t.text "description"
    t.string "external_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "productions", "companies"
  add_foreign_key "productions", "venues"
end
