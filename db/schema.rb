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

ActiveRecord::Schema.define(version: 20170110080129) do

  create_table "designs", force: :cascade do |t|
    t.string   "customer",    limit: 255
    t.string   "pickup_date", limit: 50
    t.string   "pickup_time", limit: 50
    t.string   "remarks",     limit: 255
    t.string   "status",      limit: 50
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "particular_id",      limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "images", ["particular_id"], name: "index_images_on_particular_id", using: :btree

  create_table "particulars", force: :cascade do |t|
    t.string   "media_type",         limit: 255
    t.integer  "qty",                limit: 4
    t.boolean  "w_design"
    t.string   "description",        limit: 255
    t.float    "amount",             limit: 53
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "design_id",          limit: 4
  end

  add_index "particulars", ["design_id"], name: "index_particulars_on_design_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string  "media",       limit: 255
    t.boolean "w_size"
    t.string  "description", limit: 255
    t.float   "price",       limit: 53
  end

  add_foreign_key "particulars", "designs"
end
