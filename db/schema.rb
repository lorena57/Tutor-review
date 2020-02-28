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

ActiveRecord::Schema.define(version: 2020_02_28_020426) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "appointment_info"
    t.integer "student_id"
    t.integer "tutor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_appointments_on_student_id"
    t.index ["tutor_id"], name: "index_appointments_on_tutor_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "student_id"
    t.integer "appointment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_reviews_on_appointment_id"
    t.index ["student_id"], name: "index_reviews_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "years_exp"
    t.string "SME"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "students"
  add_foreign_key "appointments", "tutors"
  add_foreign_key "reviews", "appointments"
  add_foreign_key "reviews", "students"
end
