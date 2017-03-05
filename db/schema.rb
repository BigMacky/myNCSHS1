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

ActiveRecord::Schema.define(version: 20170301141638) do

  create_table "announcements", force: :cascade do |t|
    t.date     "post_date"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_sections", force: :cascade do |t|
    t.string   "section_name"
    t.integer  "room_number"
    t.string   "academic_track"
    t.string   "adviser"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "student_lrn"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "age"
    t.date     "birthdate"
    t.string   "religion"
    t.string   "contact_no"
    t.integer  "year_level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_title"
    t.string   "schedule"
    t.string   "instructor"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "license_id"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "contact_no"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
