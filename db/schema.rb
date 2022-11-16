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

ActiveRecord::Schema[7.0].define(version: 2022_11_14_133424) do
  create_table "desserts", force: :cascade do |t|
    t.integer "food_id"
    t.string "variety", null: false
    t.string "topping", null: false
    t.string "flavor", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flavor"], name: "index_desserts_on_flavor"
    t.index ["food_id"], name: "index_desserts_on_food_id"
    t.index ["topping"], name: "index_desserts_on_topping"
    t.index ["variety"], name: "index_desserts_on_variety"
  end

  create_table "foods", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.string "description", null: false
    t.string "dish", null: false
    t.string "fruits", null: false
    t.string "ingredient", null: false
    t.string "measurement", null: false
    t.string "spice", null: false
    t.string "sushi", null: false
    t.string "vegetables", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description"], name: "index_foods_on_description"
    t.index ["dish"], name: "index_foods_on_dish"
    t.index ["fruits"], name: "index_foods_on_fruits"
    t.index ["ingredient"], name: "index_foods_on_ingredient"
    t.index ["measurement"], name: "index_foods_on_measurement"
    t.index ["spice"], name: "index_foods_on_spice"
    t.index ["sushi"], name: "index_foods_on_sushi"
    t.index ["vegetables"], name: "index_foods_on_vegetables"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_restaurants_on_address"
    t.index ["name"], name: "index_restaurants_on_name"
    t.index ["phone"], name: "index_restaurants_on_phone"
  end

  add_foreign_key "desserts", "foods"
end
