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

ActiveRecord::Schema.define(version: 2022_07_25_214555) do

  create_table "addresses", force: :cascade do |t|
    t.string "cep"
    t.string "public_place"
    t.string "complement"
    t.string "district"
    t.string "city"
    t.string "uf"
    t.string "cod_ibge"
    t.integer "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_addresses_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "full_name"
    t.string "cpf"
    t.string "cns"
    t.string "email"
    t.date "birthdate"
    t.string "phone"
    t.text "photo"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "people"
end
