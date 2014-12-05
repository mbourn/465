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

ActiveRecord::Schema.define(version: 20141203063905) do

  create_table "items", force: true do |t|
    t.decimal  "price"
    t.string   "pic"
    t.string   "allergy"
    t.string   "recipe"
    t.string   "desc"
    t.boolean  "glut"
    t.boolean  "veg"
    t.boolean  "vegan"
    t.boolean  "kid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["item_id"], name: "index_order_items_on_item_id"
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"

  create_table "orders", force: true do |t|
    t.decimal  "charge"
    t.integer  "promise_time"
    t.boolean  "public"
    t.string   "req"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
