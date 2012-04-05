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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120404094105) do

  create_table "allergies", :force => true do |t|
    t.string   "allergic"
    t.string   "affect"
    t.date     "satrted"
    t.date     "ended"
    t.string   "severity"
    t.text     "journal_entry"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "categories_ds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_ds_sub_categories_ds", :id => false, :force => true do |t|
    t.integer "categories_d_id"
    t.integer "sub_categories_d_id"
  end

  create_table "categories_ds_vaidyas", :id => false, :force => true do |t|
    t.integer "categories_d_id"
    t.integer "vaidya_id"
  end

  create_table "enquiries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone_no"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vaidya_id"
    t.integer  "hospital_id"
    t.string   "user_email"
  end

  create_table "hospitals", :force => true do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_line_3"
    t.string   "emergency_services"
    t.integer  "ambulance_contact"
    t.string   "pharmacy_details"
    t.integer  "no_of_private_rooms"
    t.integer  "no_of_wards"
    t.string   "specialities"
    t.string   "doctor_list"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "immunizations", :force => true do |t|
    t.string   "immu_name"
    t.date     "date"
    t.text     "journal_entry"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "insurances", :force => true do |t|
    t.string   "type_insurance"
    t.string   "comp_name"
    t.string   "plan_name"
    t.string   "plan_id"
    t.string   "group_no"
    t.string   "card_name"
    t.string   "policy_id"
    t.string   "insure_phone"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "journal_entry"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "medications", :force => true do |t|
    t.string   "medication"
    t.string   "take_medi"
    t.date     "started"
    t.date     "ended"
    t.string   "route"
    t.string   "strength"
    t.string   "how_many"
    t.string   "how_often"
    t.text     "journal_entry"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_line_3"
    t.string   "suffering_from"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "problems", :force => true do |t|
    t.string   "symptom"
    t.string   "problem"
    t.date     "started"
    t.date     "ended"
    t.text     "journal_entry"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "procedures", :force => true do |t|
    t.string   "surgery"
    t.date     "started"
    t.date     "ended"
    t.text     "journal_entry"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.integer  "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "results", :force => true do |t|
    t.string   "test_name"
    t.string   "final_result"
    t.string   "unit"
    t.date     "date_test"
    t.string   "goal"
    t.string   "per_entry"
    t.string   "journal_entry"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sub_categories_ds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "",    :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                               :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vaidyas", :force => true do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_line_3"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.integer  "contact_no"
    t.integer  "fax_no"
    t.string   "website_url"
    t.string   "qualification"
    t.string   "speciality"
    t.string   "affiliation"
    t.string   "awards"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

end
