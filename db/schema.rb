# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_26_060133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_registrations", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "garant_id"
    t.bigint "course_id"
    t.datetime "date"
    t.boolean "approved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_registrations_on_course_id"
    t.index ["garant_id"], name: "index_course_registrations_on_garant_id"
    t.index ["student_id"], name: "index_course_registrations_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "course_type"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "garant_id", null: false
    t.bigint "executive_id", null: false
    t.index ["executive_id"], name: "index_courses_on_executive_id"
    t.index ["garant_id"], name: "index_courses_on_garant_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.bigint "room_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_equipment_on_room_id"
  end

  create_table "exec_rooms", force: :cascade do |t|
    t.bigint "executive_id"
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["executive_id"], name: "index_exec_rooms_on_executive_id"
    t.index ["room_id"], name: "index_exec_rooms_on_room_id"
  end

  create_table "executives", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "garants", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lecturers", force: :cascade do |t|
    t.bigint "garant_id"
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garant_id"], name: "index_lecturers_on_garant_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "room_type"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scores", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "term_id"
    t.bigint "lecturer_id"
    t.float "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lecturer_id"], name: "index_scores_on_lecturer_id"
    t.index ["student_id"], name: "index_scores_on_student_id"
    t.index ["term_id"], name: "index_scores_on_term_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "terms", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "course_id"
    t.bigint "lecturer_id"
    t.string "name"
    t.string "term_type"
    t.text "description"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_terms_on_course_id"
    t.index ["lecturer_id"], name: "index_terms_on_lecturer_id"
    t.index ["room_id"], name: "index_terms_on_room_id"
  end

  create_table "timetables", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "term_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_timetables_on_student_id"
    t.index ["term_id"], name: "index_timetables_on_term_id"
  end

  add_foreign_key "courses", "executives"
  add_foreign_key "courses", "garants"
end
