# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_24_114814) do
  create_table "contacts", force: :cascade do |t|
    t.string "meno"
    t.string "priezvisko"
    t.string "titul_pred"
    t.string "titul_za"
    t.string "klapka"
    t.string "verejne_cislo"
    t.string "sluzobny_mobil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pohlavie"
    t.integer "department_id"
    t.index ["department_id"], name: "index_contacts_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_departments_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contacts", "departments"
  add_foreign_key "departments", "sections"
end
