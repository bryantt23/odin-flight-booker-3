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

ActiveRecord::Schema.define(version: 20150409021833) do

  create_table "airports", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "arriving_airport_id"
    t.integer  "departing_airport_id"
    t.datetime "departure"
    t.integer  "duration"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "flights", ["arriving_airport_id"], name: "index_flights_on_arriving_airport_id"
  add_index "flights", ["departing_airport_id"], name: "index_flights_on_departing_airport_id"

end