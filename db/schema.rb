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

ActiveRecord::Schema.define(version: 20170617170434) do

  create_table "autori", force: :cascade do |t|
    t.string "jmeno"
    t.string "prijmeni"
    t.string "narodnost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "knihy", force: :cascade do |t|
    t.string "nazev"
    t.integer "autor_id"
    t.integer "zanr_id"
    t.string "isbn"
    t.integer "nakladatelstvi_id"
    t.integer "pocet_stran"
    t.string "vydani"
    t.string "rozmer"
    t.string "rok_vydani"
    t.string "vazba"
    t.decimal "cena"
    t.string "poznamka"
    t.text "popis"
    t.boolean "koupeno"
    t.boolean "ziskano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nakladatelstvi", force: :cascade do |t|
    t.string "nazev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string "last_login_from_ip_address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at"
  end

  create_table "zanry", force: :cascade do |t|
    t.string "nazev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
