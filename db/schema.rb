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

ActiveRecord::Schema.define(:version => 20110828095317) do

  create_table "posts", :force => true do |t|
    t.string   "author"
    t.integer  "topic_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "body"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "domain"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "post_title_xpath"
    t.string   "post_body_xpath"
    t.string   "post_xpath"
    t.string   "post_author_xpath"
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "last_check_time"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
