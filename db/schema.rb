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

ActiveRecord::Schema.define(version: 20131201160924) do

  create_table "building_energy_ratings", force: true do |t|
    t.string   "building_rating", limit: 1,                          null: false
    t.decimal  "annual_energy",             precision: 10, scale: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "electricity_bills", force: true do |t|
    t.datetime "start_date",                                             null: false
    t.datetime "end_date",                                               null: false
    t.decimal  "electricity_day_consumption",   precision: 10, scale: 0, null: false
    t.decimal  "electricity_night_consumption", precision: 10, scale: 0, null: false
    t.decimal  "day_cost",                      precision: 10, scale: 0
    t.decimal  "night_cost",                    precision: 10, scale: 0
    t.decimal  "gross_cost",                    precision: 10, scale: 0
    t.boolean  "active",                                                 null: false
    t.integer  "members_id",                                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "utility_provider_id",                                    null: false
  end

  add_index "electricity_bills", ["members_id"], name: "index_electricity_bills_on_members_id", using: :btree
  add_index "electricity_bills", ["utility_provider_id"], name: "index_electricity_bills_on_utility_provider_id", using: :btree

  create_table "gas_bills", force: true do |t|
    t.datetime "start_date",                                   null: false
    t.datetime "end_date",                                     null: false
    t.integer  "gas_start_reading",                            null: false
    t.integer  "gas_end_reading",                              null: false
    t.decimal  "net_cost",            precision: 10, scale: 0
    t.decimal  "gross_cost",          precision: 10, scale: 0
    t.boolean  "active",                                       null: false
    t.integer  "members_id",                                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "utility_provider_id",                          null: false
  end

  add_index "gas_bills", ["utility_provider_id"], name: "index_gas_bills_on_utility_provider_id", using: :btree

  create_table "members", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "oil_bills", force: true do |t|
    t.datetime "start_date",                                   null: false
    t.datetime "end_date",                                     null: false
    t.decimal  "volume",              precision: 10, scale: 0, null: false
    t.decimal  "net_cost",            precision: 10, scale: 0
    t.decimal  "gross_cost",          precision: 10, scale: 0
    t.integer  "members_id",                                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "utility_provider_id",                          null: false
  end

  add_index "oil_bills", ["members_id"], name: "index_oil_bills_on_members_id", using: :btree
  add_index "oil_bills", ["utility_provider_id"], name: "index_oil_bills_on_utility_provider_id", using: :btree

  create_table "utility_providers", force: true do |t|
    t.string   "name"
    t.decimal  "co2_coefficient", precision: 10, scale: 0
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
