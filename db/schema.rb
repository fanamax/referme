# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091002054735) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "url"
    t.string   "category"
    t.string   "approved"
    t.date     "start_date"
    t.date     "expiry_date"
    t.integer  "upper_limit"
    t.string   "referee_constraint"
    t.string   "referral_program_name"
    t.text     "description"
    t.string   "referrer_reward"
    t.string   "referee_reward"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_records", :force => true do |t|
    t.integer  "business_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referrals", :force => true do |t|
    t.integer  "user_id"
    t.integer  "business_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "role"
    t.integer  "ratingcount"
    t.integer  "averagerating"
    t.integer  "contact_record_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
