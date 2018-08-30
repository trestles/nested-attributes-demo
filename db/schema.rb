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

ActiveRecord::Schema.define(:version => 20180830005850) do

  create_table "addresses", :force => true do |t|
    t.integer "user_id"
    t.string  "city",    :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "interest_users", :force => true do |t|
    t.integer "user_id"
    t.integer "interest_id"
  end

  create_table "interests", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "site_users", :force => true do |t|
    t.integer  "site_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "company_id"
  end

  create_table "tasks", :force => true do |t|
    t.integer "user_id"
    t.string  "name",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
