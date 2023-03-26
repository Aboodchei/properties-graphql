# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_26_151210) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "furnishings", force: :cascade do |t|
    t.bigint "property_id", null: false
    t.integer "overall_furnishing_level", default: 0, null: false
    t.boolean "furniture_deductible", default: false, null: false
    t.integer "total_furniture_cost", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["furniture_deductible"], name: "index_furnishings_on_furniture_deductible"
    t.index ["overall_furnishing_level"], name: "index_furnishings_on_overall_furnishing_level"
    t.index ["property_id"], name: "index_furnishings_on_property_id"
    t.index ["total_furniture_cost"], name: "index_furnishings_on_total_furniture_cost"
  end

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.string "owner_email"
    t.integer "property_type", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_type"], name: "index_properties_on_property_type"
  end

  create_table "valuations", force: :cascade do |t|
    t.bigint "property_id", null: false
    t.integer "optimal_price", default: 0, null: false
    t.integer "minimum_price", default: 0, null: false
    t.integer "maximum_payment_duration_months", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_valuations_on_property_id"
  end

  add_foreign_key "furnishings", "properties"
  add_foreign_key "valuations", "properties"
end
