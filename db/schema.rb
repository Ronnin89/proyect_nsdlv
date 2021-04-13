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

ActiveRecord::Schema.define(version: 2021_04_13_133714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.string "id_fundation"
    t.string "grade"
    t.string "phone_secure"
    t.string "entry"
    t.string "egress"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_children_on_profile_id"
  end

  create_table "children_educators", id: false, force: :cascade do |t|
    t.bigint "educator_id", null: false
    t.bigint "child_id", null: false
    t.index ["child_id", "educator_id"], name: "index_children_educators_on_child_id_and_educator_id"
    t.index ["educator_id", "child_id"], name: "index_children_educators_on_educator_id_and_child_id"
  end

  create_table "children_parents", id: false, force: :cascade do |t|
    t.bigint "parent_id", null: false
    t.bigint "child_id", null: false
    t.index ["child_id", "parent_id"], name: "index_children_parents_on_child_id_and_parent_id"
    t.index ["parent_id", "child_id"], name: "index_children_parents_on_parent_id_and_child_id"
  end

  create_table "educators", force: :cascade do |t|
    t.integer "type_educator"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_educators_on_profile_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "relation"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_parents_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "rut"
    t.string "names"
    t.string "last_names"
    t.date "date_of_birth"
    t.string "nationality"
    t.integer "sex"
    t.string "address"
    t.string "phone"
    t.integer "type_profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "children", "profiles"
  add_foreign_key "educators", "profiles"
  add_foreign_key "parents", "profiles"
end
