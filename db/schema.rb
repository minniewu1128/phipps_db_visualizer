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

ActiveRecord::Schema.define(version: 20180328220301) do

  create_table "addresses", force: :cascade do |t|
    t.text "address_id"
    t.text "lookup_id"
    t.text "address_1"
    t.text "city"
    t.text "state"
    t.text "zip"
    t.text "country"
    t.text "type"
    t.date "date_added"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constituent_events", force: :cascade do |t|
    t.text "lookup_id"
    t.text "event_id"
    t.text "status"
    t.boolean "attend"
    t.text "host_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constituent_membership_records", force: :cascade do |t|
    t.text "lookup_id"
    t.text "membership_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constituents", force: :cascade do |t|
    t.text "lookup_id"
    t.text "suffix"
    t.text "title"
    t.text "name"
    t.text "last_group"
    t.text "email_id"
    t.text "phone"
    t.date "dob"
    t.boolean "do_not_email"
    t.boolean "duplicate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_histories", force: :cascade do |t|
    t.text "contact_history_id"
    t.text "lookup_id"
    t.text "type"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donation_histories", force: :cascade do |t|
    t.integer "donation_history_id"
    t.text "lookup_id"
    t.integer "amount"
    t.date "date"
    t.text "method"
    t.boolean "do_not_acknowledge"
    t.boolean "given_anonymously"
    t.text "transaction_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donation_programs", force: :cascade do |t|
    t.text "donation_program_id"
    t.text "program"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.text "event_id"
    t.text "event_name"
    t.text "category"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "membership_records", force: :cascade do |t|
    t.text "membership_id"
    t.text "membership_scheme"
    t.text "membership_level"
    t.text "add_ons"
    t.text "membership_level_type"
    t.text "membership_status"
    t.integer "membership_term"
    t.date "start_date"
    t.date "end_date"
    t.date "last_renewed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.text "fname"
    t.text "lname"
    t.text "email_id"
    t.text "password_digest"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
