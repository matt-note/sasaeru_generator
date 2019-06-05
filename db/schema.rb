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

ActiveRecord::Schema.define(version: 2019_05_20_145331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sasaerus", force: :cascade do |t|
    t.string "top_text", default: "WAVE+BB PRESS"
    t.string "title", default: "〇〇〇〇〇〇〇を支える技術", null: false
    t.string "sub_title", default: "なんらかのサブタイトル"
    t.string "author", default: "名無しの権兵衛", null: false
    t.string "base_color", default: "#b2a2c7"
    t.string "lead", default: "なんらかの文章。なんらかの文章。なんらかの文章。", null: false
    t.string "sub_lead_1", default: "Lorem ipsum／dolor sit amet／consectetur"
    t.string "sub_lead_2", default: "adipiscing elit／Duis orci dolor／consequat"
    t.string "sub_lead_3", default: "vitae dolor non／tincidunt／maximus felis"
    t.string "sub_lead_4", default: "Lorem ipsum／dolor sit amet／consectetur"
    t.string "bottom_text", default: "なんらかのボトムテキスト"
    t.string "publisher", default: "〇〇評論社"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
