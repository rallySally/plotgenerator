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

ActiveRecord::Schema.define(version: 20170803183046) do

  create_table "characteristics", force: :cascade do |t|
    t.string "name"
    t.integer "karma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string "name"
    t.boolean "isSurname"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "name_id"
    t.integer "surname_id"
    t.integer "job_id"
    t.integer "age"
    t.integer "gender"
    t.string "color"
    t.string "hair"
    t.integer "charOne_id"
    t.integer "charTwo_id"
    t.integer "charThree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charOne_id"], name: "index_people_on_charOne_id"
    t.index ["charThree_id"], name: "index_people_on_charThree_id"
    t.index ["charTwo_id"], name: "index_people_on_charTwo_id"
    t.index ["job_id"], name: "index_people_on_job_id"
    t.index ["name_id"], name: "index_people_on_name_id"
    t.index ["surname_id"], name: "index_people_on_surname_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.integer "characterOne_id"
    t.integer "characterTwo_id"
    t.integer "characterThree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["characterOne_id"], name: "index_stories_on_characterOne_id"
    t.index ["characterTwo_id"], name: "index_stories_on_characterTwo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vocabularies", force: :cascade do |t|
    t.string "word"
    t.string "function"
    t.string "article"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
