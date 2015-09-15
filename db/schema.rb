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

ActiveRecord::Schema.define(version: 20150911162927) do

  create_table "budgets", force: :cascade do |t|
    t.string   "savings_target"
    t.float    "monthly_savings"
    t.float    "monthly_budget"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "weekly_budget"
    t.integer  "daily_budget"
    t.float    "weekly_expenses"
    t.float    "monthly_expenses"
    t.float    "daily_expenses"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "details", force: :cascade do |t|
    t.string   "first_name"
    t.integer  "user_id"
    t.integer  "savings_amount"
    t.integer  "monthly_savings"
    t.integer  "interest_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "icons", force: :cascade do |t|
    t.text     "title"
    t.float    "price"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "monthly_budget"
    t.integer  "weekly_budget"
    t.integer  "daily_budget"
  end

  create_table "infos", force: :cascade do |t|
    t.string   "first_name"
    t.integer  "savings_amount"
    t.integer  "monthly_savings"
    t.integer  "interest_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "monthlyicons", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "monthly_expenses"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "pictures", force: :cascade do |t|
    t.text     "title"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "updates", force: :cascade do |t|
    t.string   "first_name"
    t.integer  "user_id"
    t.float    "savings_amount"
    t.float    "monthly_savings"
    t.float    "interest_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "weekly_interest"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.integer  "savings_amount"
    t.integer  "monthly_savings"
    t.integer  "interest_rate"
    t.float    "weekly_expenses"
    t.float    "monthly_expenses"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weeklyicons", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "weekly_expenses"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
