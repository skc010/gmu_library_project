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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20141009233900) do
=======
ActiveRecord::Schema.define(version: 20141009234817) do
>>>>>>> 33d375dcc750505b48aaf4abb313a955006e3172

  create_table "authors", force: true do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "nationality"
    t.string   "awards"
    t.string   "biography"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "isbn"
    t.string   "title"
    t.integer  "author_id"
    t.string   "genre"
    t.text     "abstract"
    t.integer  "pages"
    t.string   "image_cover_url"
    t.date     "published_on"
    t.integer  "total_in_library"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
=======
  create_table "reservations", force: true do |t|
    t.date     "reserved_on"
    t.date     "due_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "book_id"
  end

>>>>>>> 33d375dcc750505b48aaf4abb313a955006e3172
  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "user_id"
    t.string   "password_digest"
    t.boolean  "admin"
<<<<<<< HEAD
    t.datetime "create_at"
=======
>>>>>>> 33d375dcc750505b48aaf4abb313a955006e3172
    t.datetime "updated_at"
    t.datetime "created_at"
  end

end
