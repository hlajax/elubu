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

ActiveRecord::Schema.define(version: 2020_02_23_195109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "titre"
    t.bigint "recette_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recette_id"], name: "index_ingredients_on_recette_id"
  end

  create_table "instructions", force: :cascade do |t|
    t.text "etape"
    t.bigint "recette_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recette_id"], name: "index_instructions_on_recette_id"
  end

  create_table "recettes", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "utilisateur_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ingredients", "recettes"
  add_foreign_key "instructions", "recettes"
end
