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

ActiveRecord::Schema.define(version: 20140112130614) do

  create_table "admins", force: true do |t|
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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "companies", force: true do |t|
    t.string "name"
  end

  create_table "locations", force: true do |t|
    t.integer "company_id"
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
  end

  create_table "offerings", force: true do |t|
    t.integer "procedure_id"
    t.integer "company_id"
    t.float   "exam_price"
    t.float   "test_price"
    t.float   "total_price"
    t.string  "notes",        default: ""
  end

  create_table "procedures", force: true do |t|
    t.string "name"
    t.string "category",    default: "R"
    t.string "category_id", default: ""
  end

  create_table "providers", force: true do |t|
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

  add_index "providers", ["email"], name: "index_providers_on_email", unique: true
  add_index "providers", ["reset_password_token"], name: "index_providers_on_reset_password_token", unique: true

end
