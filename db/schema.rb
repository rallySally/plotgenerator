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

ActiveRecord::Schema.define(version: 20170803093254) do

  create_table "characteristics", force: :cascade do |t|
    t.string   "name"
    t.integer  "karma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string   "name"
    t.boolean  "isSurname"
    t.integer  "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "gender"
    t.string   "color"
    t.string   "hairlength"
    t.integer  "charOne_id"
    t.integer  "charTwo_id"
    t.integer  "charThree_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "people", ["charOne_id"], name: "index_people_on_charOne_id"
  add_index "people", ["charThree_id"], name: "index_people_on_charThree_id"
  add_index "people", ["charTwo_id"], name: "index_people_on_charTwo_id"

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.integer  "charachterOne_id"
    t.integer  "charachterTwo_id"
    t.integer  "charachterThree_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "stories", ["charachterOne_id"], name: "index_stories_on_charachterOne_id"
  add_index "stories", ["charachterThree_id"], name: "index_stories_on_charachterThree_id"
  add_index "stories", ["charachterTwo_id"], name: "index_stories_on_charachterTwo_id"

  create_table "vocabularies", force: :cascade do |t|
    t.string   "word"
    t.string   "function"
    t.string   "article"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
