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

ActiveRecord::Schema.define(version: 20170503115345) do

  create_table "scanners", force: :cascade do |t|
    t.string "scanner_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sequence_instances", force: :cascade do |t|
    t.integer "sequence_id"
    t.integer "session_id"
    t.boolean "analysed"
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sequence_id"], name: "index_sequence_instances_on_sequence_id"
    t.index ["session_id"], name: "index_sequence_instances_on_session_id"
  end

  create_table "sequences", force: :cascade do |t|
    t.string "sequence_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.date "scandate"
    t.string "session_pdf"
    t.integer "scanner_id"
    t.integer "sequence_instances_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scanner_id"], name: "index_sessions_on_scanner_id"
    t.index ["sequence_instances_id"], name: "index_sessions_on_sequence_instances_id"
  end

end
