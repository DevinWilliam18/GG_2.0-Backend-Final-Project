# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_25_001119) do
  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.integer "qty"
    t.float "total_price"
    t.integer "order_id", null: false
    t.integer "food_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_details_on_food_id"
    t.index ["order_id"], name: "index_details_on_order_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.text "description"
    t.integer "qty"
    t.float "price"
    t.integer "category_id", null: false
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_foods_on_category_id"
    t.index ["owner_id"], name: "index_foods_on_owner_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status", default: "NEW", null: false
    t.datetime "finished_time"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "owner_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "details", "foods"
  add_foreign_key "details", "orders"
  add_foreign_key "foods", "categories"
  add_foreign_key "foods", "owners"
  add_foreign_key "orders", "customers"
end
