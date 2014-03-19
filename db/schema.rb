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

ActiveRecord::Schema.define(version: 20140319182257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kml"
    t.string   "policy"
    t.integer  "areaable_id"
    t.integer  "areaable_type"
  end

  create_table "diversions", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "diversionable_id"
    t.integer  "diversionable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "area_id"
  end

  add_index "diversions", ["area_id"], name: "index_diversions_on_area_id", using: :btree

  create_table "for_sales", force: true do |t|
    t.integer  "area_id"
    t.float    "volume"
    t.string   "source"
    t.string   "description"
    t.string   "transferable_to", default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.string   "contact_info"
  end

  add_index "for_sales", ["area_id"], name: "index_for_sales_on_area_id", using: :btree

  create_table "owners", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.integer  "zip"
    t.string   "county"
    t.integer  "ownerable_id"
    t.integer  "ownerable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "records_id"
    t.integer  "diversions_id"
  end

  add_index "owners", ["diversions_id"], name: "index_owners_on_diversions_id", using: :btree
  add_index "owners", ["records_id"], name: "index_owners_on_records_id", using: :btree

  create_table "records", force: true do |t|
    t.string   "owner"
    t.string   "type_record"
    t.string   "source"
    t.date     "priority_date"
    t.string   "flow"
    t.string   "volume"
    t.string   "irrigation"
    t.string   "domestic"
    t.string   "stockwatering"
    t.string   "change_apps"
    t.date     "proof_due_date"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "area_id"
    t.integer  "diversionable_id"
    t.string   "diversionable_type"
    t.integer  "diversions_id"
    t.integer  "owner_id"
  end

  add_index "records", ["area_id"], name: "index_records_on_area_id", using: :btree
  add_index "records", ["diversionable_id", "diversionable_type"], name: "index_records_on_diversionable_id_and_diversionable_type", using: :btree
  add_index "records", ["diversions_id"], name: "index_records_on_diversions_id", using: :btree
  add_index "records", ["owner_id"], name: "index_records_on_owner_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "wanteds", force: true do |t|
    t.integer  "area_id"
    t.float    "volume"
    t.string   "source"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact_info"
  end

  add_index "wanteds", ["area_id"], name: "index_wanteds_on_area_id", using: :btree

end
