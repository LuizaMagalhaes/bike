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

ActiveRecord::Schema.define(version: 2020_05_15_005215) do

  create_table "advertisers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_confirmation"
    t.integer "document"
    t.integer "phone"
    t.string "agency"
    t.string "account_number"
    t.string "bank_name"
    t.string "account_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicycles", force: :cascade do |t|
    t.string "title"
    t.float "price"
    t.decimal "longitude", precision: 10, scale: 6
    t.decimal "latitude", precision: 10, scale: 6
    t.string "description"
    t.boolean "available"
    t.string "image_url"
    t.integer "advertiser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_confirmation"
    t.integer "document"
    t.integer "phone"
    t.integer "credit_card_number"
    t.string "credit_card_name"
    t.integer "credit_card_cvv"
    t.string "credit_card_expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
