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

ActiveRecord::Schema.define(version: 20160226032226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogposts", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_units", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
    t.integer "amount"
    t.integer "unit_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string  "food"
    t.boolean "nut"
    t.boolean "paleo"
    t.boolean "vegan"
    t.boolean "vegetarian"
    t.boolean "gluten_free"
    t.boolean "dairy"
  end

  create_table "recipes", force: :cascade do |t|
    t.string  "title"
    t.string  "directions"
    t.integer "baking_time"
    t.integer "baking_temperature"
    t.integer "servings"
  end

  create_table "units", force: :cascade do |t|
    t.string "measurement"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
