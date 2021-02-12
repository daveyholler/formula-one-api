# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_11_200214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "circuits", force: :cascade do |t|
    t.integer "circuitId"
    t.string "circuitRef"
    t.string "name"
    t.string "location"
    t.string "country"
    t.float "lat"
    t.float "lng"
    t.string "alt"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["circuitId"], name: "index_circuits_on_circuitId"
  end

  create_table "constructor_results", force: :cascade do |t|
    t.integer "constructorResultId"
    t.integer "raceId"
    t.integer "constructorId"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constructorId"], name: "index_constructor_results_on_constructorId"
    t.index ["constructorResultId"], name: "index_constructor_results_on_constructorResultId"
    t.index ["raceId"], name: "index_constructor_results_on_raceId"
  end

  create_table "constructor_standings", force: :cascade do |t|
    t.integer "constructorStandingId"
    t.integer "raceId"
    t.integer "constructorId"
    t.integer "points"
    t.integer "position"
    t.string "positionText"
    t.integer "wins"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constructorId"], name: "index_constructor_standings_on_constructorId"
    t.index ["constructorStandingId"], name: "index_constructor_standings_on_constructorStandingId"
    t.index ["raceId"], name: "index_constructor_standings_on_raceId"
  end

  create_table "constructors", force: :cascade do |t|
    t.integer "constructorId"
    t.string "constructorRef"
    t.string "name"
    t.string "nationality"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constructorId"], name: "index_constructors_on_constructorId"
  end

  create_table "driver_standings", force: :cascade do |t|
    t.integer "driverStandingsId"
    t.integer "raceId"
    t.integer "driverId"
    t.integer "points"
    t.integer "position"
    t.string "positionText"
    t.integer "wins"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driverId"], name: "index_driver_standings_on_driverId"
    t.index ["driverStandingsId"], name: "index_driver_standings_on_driverStandingsId"
    t.index ["raceId"], name: "index_driver_standings_on_raceId"
  end

  create_table "drivers", force: :cascade do |t|
    t.integer "driverId"
    t.string "driverRef"
    t.string "number"
    t.string "code"
    t.string "forename"
    t.string "surname"
    t.string "dob"
    t.string "nationality"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driverId"], name: "index_drivers_on_driverId"
  end

  create_table "lap_times", force: :cascade do |t|
    t.integer "raceId"
    t.integer "driverId"
    t.integer "lap"
    t.integer "position"
    t.string "time"
    t.integer "milliseconds"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driverId"], name: "index_lap_times_on_driverId"
    t.index ["raceId"], name: "index_lap_times_on_raceId"
  end

  create_table "pit_stops", force: :cascade do |t|
    t.integer "raceId"
    t.integer "driverId"
    t.integer "stop"
    t.integer "lap"
    t.string "time"
    t.string "duration"
    t.integer "milliseconds"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driverId"], name: "index_pit_stops_on_driverId"
    t.index ["raceId"], name: "index_pit_stops_on_raceId"
  end

  create_table "qualifyings", force: :cascade do |t|
    t.integer "qualifyId"
    t.integer "raceId"
    t.integer "driverId"
    t.integer "constructorId"
    t.integer "number"
    t.integer "position"
    t.string "q1"
    t.string "q2"
    t.string "q3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constructorId"], name: "index_qualifyings_on_constructorId"
    t.index ["driverId"], name: "index_qualifyings_on_driverId"
    t.index ["qualifyId"], name: "index_qualifyings_on_qualifyId"
    t.index ["raceId"], name: "index_qualifyings_on_raceId"
  end

  create_table "races", force: :cascade do |t|
    t.integer "raceId"
    t.integer "year"
    t.integer "round"
    t.integer "circuitId"
    t.string "name"
    t.string "date"
    t.string "time"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["circuitId"], name: "index_races_on_circuitId"
    t.index ["raceId"], name: "index_races_on_raceId"
  end

  create_table "results", force: :cascade do |t|
    t.integer "resultId"
    t.integer "raceId"
    t.integer "driverId"
    t.integer "constructorId"
    t.string "number"
    t.integer "grid"
    t.integer "position"
    t.string "positionText"
    t.string "positionOrder"
    t.integer "points"
    t.integer "laps"
    t.string "time"
    t.bigint "milliseconds"
    t.string "fastestLap"
    t.integer "rank"
    t.string "fastestLapTime"
    t.float "fastestLapSpeed"
    t.integer "statusId"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constructorId"], name: "index_results_on_constructorId"
    t.index ["driverId"], name: "index_results_on_driverId"
    t.index ["raceId"], name: "index_results_on_raceId"
    t.index ["resultId"], name: "index_results_on_resultId"
    t.index ["statusId"], name: "index_results_on_statusId"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["year"], name: "index_seasons_on_year"
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "statusId"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["statusId"], name: "index_statuses_on_statusId"
  end

end
