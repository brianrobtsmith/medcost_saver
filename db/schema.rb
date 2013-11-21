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

ActiveRecord::Schema.define(version: 20131121001419) do

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
  end

  create_table "procedures", force: true do |t|
    t.string "name"
  end

end
