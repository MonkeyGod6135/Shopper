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

ActiveRecord::Schema[7.0].define(version: 2022_04_21_144934) do
  create_table "listitems", force: :cascade do |t|
    t.integer "shoppinglistitems_id", null: false
    t.integer "shoppinglists_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoppinglistitems_id"], name: "index_listitems_on_shoppinglistitems_id"
    t.index ["shoppinglists_id"], name: "index_listitems_on_shoppinglists_id"
  end

  create_table "shoppinglistitems", force: :cascade do |t|
    t.string "item_name"
    t.string "price"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoppinglists", force: :cascade do |t|
    t.string "shopping_list_name"
    t.string "store"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "listitems", "shoppinglistitems", column: "shoppinglistitems_id"
  add_foreign_key "listitems", "shoppinglists", column: "shoppinglists_id"
end
