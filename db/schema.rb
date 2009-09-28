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

ActiveRecord::Schema.define(:version => 20090928131322) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.binary   "picture"
    t.integer  "rating"
    t.text     "review"
    t.string   "category"
    t.text     "description"
    t.string   "zipcode"
    t.string   "yelpid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "pictures", :force => true do |t|
    t.string   "filename"
    t.string   "filetype"
    t.binary   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referals", :force => true do |t|
    t.datetime "publishtime"
    t.text     "description"
    t.integer  "offerprice"
    t.integer  "user_id"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", :force => true do |t|
    t.datetime "publishtime"
    t.text     "description"
    t.integer  "askprice"
    t.integer  "user_id"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "displayname"
    t.string   "email"
    t.integer  "ratingcount"
    t.integer  "averagerating"
    t.binary   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

end
