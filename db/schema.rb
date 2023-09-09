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

ActiveRecord::Schema[7.0].define(version: 2023_09_09_213154) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "trade_id", null: false
    t.bigint "city_id", null: false
    t.string "description"
    t.float "low_price"
    t.float "high_price"
    t.date "expiration_date"
    t.boolean "is_taken"
    t.boolean "is_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.bigint "supplier_id"
    t.index ["city_id"], name: "index_jobs_on_city_id"
    t.index ["customer_id"], name: "index_jobs_on_customer_id"
    t.index ["supplier_id"], name: "index_jobs_on_supplier_id"
    t.index ["trade_id"], name: "index_jobs_on_trade_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "job_id", null: false
    t.float "price"
    t.date "expiration_date"
    t.boolean "is_accepted"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_proposals_on_job_id"
    t.index ["users_id"], name: "index_proposals_on_users_id"
  end

  create_table "supplier_cities", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_supplier_cities_on_city_id"
    t.index ["users_id"], name: "index_supplier_cities_on_users_id"
  end

  create_table "supplier_trades", force: :cascade do |t|
    t.bigint "trades_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trades_id"], name: "index_supplier_trades_on_trades_id"
    t.index ["users_id"], name: "index_supplier_trades_on_users_id"
  end

  create_table "trades", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "is_supplier"
    t.boolean "is_active"
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "jobs", "cities"
  add_foreign_key "jobs", "trades"
  add_foreign_key "jobs", "users", column: "customer_id"
  add_foreign_key "jobs", "users", column: "supplier_id"
  add_foreign_key "proposals", "jobs"
  add_foreign_key "proposals", "users", column: "users_id"
  add_foreign_key "supplier_cities", "cities"
  add_foreign_key "supplier_cities", "users", column: "users_id"
  add_foreign_key "supplier_trades", "trades", column: "trades_id"
  add_foreign_key "supplier_trades", "users", column: "users_id"
end
