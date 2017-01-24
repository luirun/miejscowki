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

ActiveRecord::Schema.define(version: 20160417200058) do

  create_table "places", force: :cascade do |t|
    t.string   "miasto",             limit: 255
    t.string   "adres",              limit: 255
    t.string   "opis",               limit: 1000
    t.binary   "zdjecie",            limit: 4294967295
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "user_id",            limit: 4
    t.string   "approved",           limit: 1
  end

  create_table "users", force: :cascade do |t|
    t.string "imie",            limit: 20
    t.string "nazwisko",        limit: 50
    t.string "miasto",          limit: 50
    t.date   "dataur"
    t.string "login",           limit: 255
    t.string "email",           limit: 255
    t.string "password_digest", limit: 255
  end

end
