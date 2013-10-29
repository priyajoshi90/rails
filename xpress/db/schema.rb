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

ActiveRecord::Schema.define(:version => 20131023094744) do

  create_table "bloggers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "bloggers", ["email"], :name => "index_bloggers_on_email", :unique => true
  add_index "bloggers", ["reset_password_token"], :name => "index_bloggers_on_reset_password_token", :unique => true

  create_table "blogs", :force => true do |t|
    t.string   "title",          :limit => 512
    t.text     "content"
    t.integer  "no_of_comments"
    t.integer  "blogger_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "blogs", ["blogger_id"], :name => "index_blogs_on_blogger_id"

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "comment"
    t.integer  "blog_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["blog_id"], :name => "index_comments_on_blog_id"

  create_table "details", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.date     "dob"
    t.string   "gender",     :limit => 6
    t.text     "address"
    t.string   "role",       :limit => 10
    t.string   "hobbies"
    t.integer  "blogger_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "details", ["blogger_id"], :name => "index_details_on_blogger_id"

  create_table "discussions", :force => true do |t|
    t.string   "topic"
    t.text     "detail"
    t.integer  "blogger_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "discussions", ["blogger_id"], :name => "index_discussions_on_blogger_id"

  create_table "responses", :force => true do |t|
    t.string   "responder"
    t.text     "response1"
    t.integer  "discussion_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "responses", ["discussion_id"], :name => "index_responses_on_discussion_id"

end
