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

ActiveRecord::Schema.define(version: 20141127053132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: true do |t|
    t.integer  "adopter_id"
    t.integer  "adoptee_id"
    t.integer  "animal_id"
    t.string   "name"
    t.text     "about_me"
    t.string   "ideal_home"
    t.string   "species"
    t.string   "gender"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "child_friendly"
    t.string   "breed"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.text     "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
