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

ActiveRecord::Schema[7.0].define(version: 2022_08_22_134329) do
  create_table "agents", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone_number"
    t.string "description_experience"
    t.string "image"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brokers", force: :cascade do |t|
    t.string "address"
    t.string "description"
    t.string "images"
    t.string "link"
    t.string "phone_number"
    t.string "form"
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "pictures"
    t.string "condition"
    t.string "address"
    t.string "description"
    t.string "type_of_home"
    t.integer "bed"
    t.float "baths"
    t.integer "sq_feet"
    t.boolean "for_sale"
    t.integer "saves"
    t.integer "views"
    t.integer "price"
    t.integer "est_payment"
    t.string "extras"
    t.integer "broker_id", null: false
    t.integer "agent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_listings_on_agent_id"
    t.index ["broker_id"], name: "index_listings_on_broker_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "description"
    t.string "password_digest"
    t.integer "years_experience"
    t.float "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "full_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "listings", "agents"
  add_foreign_key "listings", "brokers"
end
