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

ActiveRecord::Schema.define(version: 20171110174105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backend_users", force: :cascade do |t|
    t.string "user_name"
    t.string "mobile_number"
    t.string "email_id"
    t.string "password"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_backend_users_on_role_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "customer_id"
    t.string "quantity"
    t.string "total_amount"
    t.boolean "is_checked_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_carts_on_customer_id"
    t.index ["product_id"], name: "index_carts_on_product_id"
  end

  create_table "customer_details", force: :cascade do |t|
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "pincode"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_details_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.string "profile_pic"
    t.string "mobile_number"
    t.string "email_id"
    t.string "password"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_customers_on_role_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "offer_name"
    t.string "products"
    t.string "discount_percent"
    t.string "validity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "customer_id"
    t.string "quantity"
    t.string "total_cost"
    t.string "payment"
    t.boolean "is_delivered"
    t.string "delivery_date"
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "cat_name"
    t.string "cat_code"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_product_categories_on_unit_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_image1"
    t.string "product_image2"
    t.string "product_image3"
    t.string "quantity"
    t.string "min_quantity"
    t.string "price"
    t.string "discount"
    t.string "subscription_date"
    t.string "min_delivery_date"
    t.bigint "product_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.string "role_name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "unit_name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "backend_users", "roles"
  add_foreign_key "carts", "customers"
  add_foreign_key "carts", "products"
  add_foreign_key "customer_details", "customers"
  add_foreign_key "customers", "roles"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "products"
  add_foreign_key "product_categories", "units"
  add_foreign_key "products", "product_categories"
end
