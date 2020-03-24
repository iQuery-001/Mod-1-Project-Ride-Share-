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

ActiveRecord::Schema.define(version: 2020_03_24_170403) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.boolean "online?"
    t.integer "zip_code"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
  end

  create_table "rides", force: :cascade do |t|
    t.string "ride_status"
    t.string "passenger_zip"
    t.integer "driver_id"
    t.integer "passenger_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "referral_type"
    t.string "primary_service"
    t.string "location_name"
    t.integer "zip_code"
    t.string "address"
    t.string "web_address"
  end

  create_table "visits", force: :cascade do |t|
    t.datetime "visit_time"
    t.integer "passenger_id"
    t.integer "service_id"
  end

end
