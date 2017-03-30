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

ActiveRecord::Schema.define(version: 20170330150824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flight_routes", force: :cascade do |t|
    t.string   "origin"
    t.string   "destination"
    t.boolean  "food"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string   "flight_number"
    t.string   "airline"
    t.integer  "number_of_passengers"
    t.datetime "arrived_at"
    t.datetime "stocked_at"
    t.datetime "cleaned_at"
    t.string   "gate"
    t.integer  "flight_route_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["flight_route_id"], name: "index_flights_on_flight_route_id", using: :btree
  end

  add_foreign_key "flights", "flight_routes"
end
