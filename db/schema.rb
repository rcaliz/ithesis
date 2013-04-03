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

ActiveRecord::Schema.define(:version => 20130402234747) do

  create_table "advisers", :force => true do |t|
    t.string   "degree"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "audios", :force => true do |t|
    t.string   "title"
    t.string   "audio"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "reunion_id"
  end

  create_table "images", :force => true do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "reunion_id"
  end

  create_table "reunions", :force => true do |t|
    t.datetime "date"
    t.string   "subject"
    t.time     "duration"
    t.string   "place"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "career"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "theses", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "adviser_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "theses", ["adviser_id"], :name => "index_theses_on_adviser_id"

  create_table "users", :force => true do |t|
    t.string   "username",                     :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.integer  "rol"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "video"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "reunion_id"
  end

end
