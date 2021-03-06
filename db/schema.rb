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

ActiveRecord::Schema.define(version: 2020_07_08_175936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "date"
    t.integer "calories_burned"
    t.integer "steps"
    t.integer "distance"
    t.integer "floors"
    t.integer "minutes_sedentary"
    t.integer "minutes_lightly_active"
    t.integer "minutes_fairly_active"
    t.integer "minutes_very_active"
    t.integer "activity_calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sleeps", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "minutes_asleep"
    t.integer "minutes_awake"
    t.integer "num_awakenings"
    t.integer "time_in_bed"
    t.integer "minutes_rem"
    t.integer "minutes_light"
    t.integer "minutes_deep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
