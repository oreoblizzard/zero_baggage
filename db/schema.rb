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

ActiveRecord::Schema.define(version: 20150725205356) do

  create_table "item_logs", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "item_id",    limit: 4
    t.integer  "machine_id", limit: 4
    t.string   "action",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.string   "name",       limit: 255
    t.decimal  "price",                  precision: 15, scale: 2
    t.integer  "status",     limit: 4,                            default: 1
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  create_table "machines", force: :cascade do |t|
    t.decimal  "latitude",   precision: 10, scale: 6
    t.decimal  "longitude",  precision: 10, scale: 6
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.integer  "item_id",    limit: 4
    t.integer  "amount",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "machine_id",    limit: 4
    t.integer  "status",        limit: 4
    t.string   "code",          limit: 255
    t.datetime "received_date"
    t.datetime "received_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "type",                   limit: 255, default: "Member", null: false
    t.string   "email",                  limit: 255, default: "",       null: false
    t.string   "encrypted_password",     limit: 255, default: "",       null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
