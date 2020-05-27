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

ActiveRecord::Schema.define(version: 2020_05_27_165315) do

  create_table "form_element_options", force: :cascade do |t|
    t.integer "form_element_id"
    t.string "label"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_element_id"], name: "index_form_element_options_on_form_element_id"
  end

  create_table "form_elements", force: :cascade do |t|
    t.string "type"
    t.string "label"
    t.string "placeholder"
    t.json "style"
    t.string "validation"
    t.integer "position"
    t.string "help_text"
    t.integer "form_section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_section_id"], name: "index_form_elements_on_form_section_id"
  end

  create_table "form_sections", force: :cascade do |t|
    t.integer "form_id"
    t.string "title"
    t.string "type"
    t.integer "position"
    t.string "description"
    t.json "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_form_sections_on_form_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_forms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
