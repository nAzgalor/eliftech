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

ActiveRecord::Schema.define(version: 20160531093235) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.decimal  "price",                      precision: 12, scale: 2
    t.decimal  "subprice",                   precision: 12, scale: 2
    t.integer  "parent_id",      limit: 4
    t.integer  "lft",            limit: 4
    t.integer  "rgt",            limit: 4
    t.integer  "depth",          limit: 4
    t.integer  "children_count", limit: 4
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

end