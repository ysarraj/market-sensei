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

ActiveRecord::Schema[7.1].define(version: 2025_08_27_085239) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "chats", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "criteria", force: :cascade do |t|
    t.string "operand"
    t.float "value"
    t.string "indicatable_type", null: false
    t.bigint "indicatable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["indicatable_type", "indicatable_id"], name: "index_criteria_on_indicatable"
  end

  create_table "criteria_alerts", force: :cascade do |t|
    t.bigint "alert_id", null: false
    t.bigint "criterium_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id"], name: "index_criteria_alerts_on_alert_id"
    t.index ["criterium_id"], name: "index_criteria_alerts_on_criterium_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.string "role"
    t.bigint "chat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
  end

  create_table "relative_strength_indices", force: :cascade do |t|
    t.string "interval"
    t.integer "time_period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string "token_contract"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.float "from_token_price"
    t.float "to_token_price"
    t.string "tx_hash"
    t.float "from_token_unit"
    t.float "to_token_unit"
    t.bigint "user_id", null: false
    t.bigint "from_token_id"
    t.bigint "to_token_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_token_id"], name: "index_transactions_on_from_token_id"
    t.index ["to_token_id"], name: "index_transactions_on_to_token_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "wallet_address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alerts", "users"
  add_foreign_key "chats", "users"
  add_foreign_key "criteria_alerts", "alerts"
  add_foreign_key "criteria_alerts", "criteria"
  add_foreign_key "messages", "chats"
  add_foreign_key "transactions", "tokens", column: "from_token_id"
  add_foreign_key "transactions", "tokens", column: "to_token_id"
  add_foreign_key "transactions", "users"
end
