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

ActiveRecord::Schema.define(version: 20140122060707) do

  create_table "abbrvs", force: true do |t|
    t.string   "Abrv"
    t.string   "Team"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fteams", force: true do |t|
    t.string   "Team"
    t.string   "TeamUrl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "live_players", force: true do |t|
    t.integer  "Nid"
    t.string   "Plyr"
    t.string   "Team"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teamplayers", force: true do |t|
    t.string   "playerid"
    t.string   "teamid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
