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

ActiveRecord::Schema.define(version: 2023_04_27_105605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "promotions", force: :cascade do |t|
    t.text "abbrev"
    t.text "logo"
    t.text "name"
    t.text "country"
    t.integer "year"
    t.text "instagram"
    t.integer "wrestler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.text "name"
    t.float "total_rating"
    t.integer "user_id"
    t.integer "wrestler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams_wrestlers", id: false, force: :cascade do |t|
    t.integer "team_id"
    t.integer "wrestler_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.boolean "admin", default: false
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "wrestlers", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.text "country"
    t.integer "height"
    t.integer "weight"
    t.integer "exp"
    t.float "rating"
    t.integer "team_id"
    t.integer "promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
