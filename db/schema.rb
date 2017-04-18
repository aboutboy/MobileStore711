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

ActiveRecord::Schema.define(version: 20170418012136) do

  create_table "order_products", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.integer  "order_id",   null: false
    t.integer  "amount",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_stores", force: :cascade do |t|
    t.integer  "store_id",   null: false
    t.integer  "order_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "payment_method", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "total_cost"
    t.integer  "store_id"
  end

  create_table "product_stores", force: :cascade do |t|
    t.integer  "store_id",   null: false
    t.integer  "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "amount"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "price",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name",                    null: false
    t.string   "address",                 null: false
    t.time     "opening_hour",            null: false
    t.time     "closing_hour",            null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "phone",        limit: 10
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "username",   null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
