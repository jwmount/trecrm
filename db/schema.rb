
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

ActiveRecord::Schema.define(version: 20151009023452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "legal_name"
    t.string   "approved_to_order"
    t.string   "contact"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "taxid"
    t.string   "fein"
    t.string   "bank"
    t.string   "references"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "product_id"
    t.string   "order_number"
    t.string   "rep"
    t.integer  "qty"
    t.decimal  "price",        precision: 5, scale: 2
    t.decimal  "discount",     precision: 2
    t.boolean  "paid"
    t.decimal  "tax",          precision: 5, scale: 2
    t.decimal  "shipping",     precision: 5, scale: 2
    t.datetime "shipped_on"
    t.boolean  "shipped",                              default: false
    t.text     "notes"
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "sku"
    t.string   "characteristics"
    t.text     "supplier"
    t.string   "qty_on_hand"
    t.integer  "reorder_level"
    t.integer  "qty_minimum_order"
    t.decimal  "minimum_order_cost",     precision: 8, scale: 2
    t.string   "quote_basis"
    t.decimal  "port_to_warehouse_cost", precision: 8, scale: 2
    t.decimal  "insurance_cost",         precision: 8, scale: 2
    t.decimal  "min_order_ship_cost",    precision: 8, scale: 2
    t.string   "weight_per_each"
    t.text     "notes"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
