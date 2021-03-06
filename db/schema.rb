# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161108205533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advertisements", force: :cascade do |t|
    t.date     "dateAvailable"
    t.text     "leaseTerms"
    t.integer  "current_mortgage"
    t.integer  "current_insurance"
    t.integer  "current_taxes"
    t.integer  "unit_id"
    t.integer  "building_id"
    t.integer  "user_id",           null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "advertisements", ["building_id"], name: "index_advertisements_on_building_id", unique: true, using: :btree
  add_index "advertisements", ["unit_id"], name: "index_advertisements_on_unit_id", unique: true, using: :btree
  add_index "advertisements", ["user_id"], name: "index_advertisements_on_user_id", using: :btree

  create_table "buildings", force: :cascade do |t|
    t.string   "building_name"
    t.text     "address",           null: false
    t.integer  "total_units"
    t.integer  "current_mortgage"
    t.integer  "current_insurance"
    t.integer  "current_taxes"
    t.integer  "user_id",           null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "buildings", ["address"], name: "index_buildings_on_address", unique: true, using: :btree
  add_index "buildings", ["building_name"], name: "index_buildings_on_building_name", unique: true, using: :btree
  add_index "buildings", ["user_id"], name: "index_buildings_on_user_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "infos", force: :cascade do |t|
    t.float    "footage"
    t.integer  "bedrooms"
    t.float    "bathrooms"
    t.integer  "parking"
    t.integer  "livingroom"
    t.integer  "kitchen"
    t.integer  "diningroom"
    t.integer  "infoable_id",   null: false
    t.string   "infoable_type", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "infos", ["infoable_type", "infoable_id"], name: "index_infos_on_infoable_type_and_infoable_id", using: :btree

  create_table "units", force: :cascade do |t|
    t.boolean  "vacant",      default: true
    t.integer  "building_id",                null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "unit_num",                   null: false
  end

  add_index "units", ["building_id"], name: "index_units_on_building_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "advertisements", "buildings"
  add_foreign_key "advertisements", "units"
  add_foreign_key "advertisements", "users"
  add_foreign_key "buildings", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "units", "buildings"
end
