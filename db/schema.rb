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

ActiveRecord::Schema.define(version: 20160516034324) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "item_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string   "name"
    t.string   "type1"
    t.string   "type2"
    t.text     "move1"
    t.text     "move2"
    t.text     "move3"
    t.text     "move4"
    t.integer  "hp"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "specialAttack"
    t.integer  "specialDefense"
    t.integer  "speed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "status"
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "username"
    t.string   "avatar"
    t.integer  "starter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers_items", force: :cascade do |t|
    t.integer  "trainer_id"
    t.integer  "item_id"
    t.integer  "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers_pokemons", force: :cascade do |t|
    t.integer  "trainer_id"
    t.integer  "pokemon_id"
    t.integer  "pokemon_position"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "exp"
    t.integer  "shiny"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.text     "avatar"
    t.integer  "starter"
    t.integer  "money"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
