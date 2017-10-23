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

ActiveRecord::Schema.define(version: 20171023053222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.boolean "open", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_game_mappings", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_question_game_mappings_on_game_id"
    t.index ["question_id"], name: "index_question_game_mappings_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text", default: "", null: false
    t.string "a", default: "", null: false
    t.string "b", default: "", null: false
    t.string "c", default: "", null: false
    t.string "d", default: "", null: false
    t.integer "answer", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "question_game_mappings", "games"
  add_foreign_key "question_game_mappings", "questions"
end
