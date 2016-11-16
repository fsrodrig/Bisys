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

ActiveRecord::Schema.define(version: 20161116125357) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "user"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bicycles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "idbicycle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entry_bicycles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "in_date"
    t.datetime "out_date"
    t.integer  "bicycles_id"
    t.integer  "terminal_entries_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["bicycles_id"], name: "index_entry_bicycles_on_bicycles_id", using: :btree
    t.index ["terminal_entries_id"], name: "index_entry_bicycles_on_terminal_entries_id", using: :btree
  end

  create_table "reserve_histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "initial_date"
    t.datetime "final_date"
    t.integer  "reserve_states_id"
    t.integer  "reserves_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["reserve_states_id"], name: "index_reserve_histories_on_reserve_states_id", using: :btree
    t.index ["reserves_id"], name: "index_reserve_histories_on_reserves_id", using: :btree
  end

  create_table "reserve_states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "reserve_state"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reserves", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "reserve"
    t.integer  "accounts_id"
    t.integer  "bicycles_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["accounts_id"], name: "index_reserves_on_accounts_id", using: :btree
    t.index ["bicycles_id"], name: "index_reserves_on_bicycles_id", using: :btree
  end

  create_table "terminal_entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "station"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terminals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "id_terminal"
    t.integer  "latitude"
    t.integer  "longitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",       limit: 20
    t.string   "lastname",   limit: 32
    t.string   "email",      limit: 50
    t.integer  "dni"
    t.integer  "account_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["account_id"], name: "index_users_on_account_id", using: :btree
  end

  add_foreign_key "entry_bicycles", "bicycles", column: "bicycles_id"
  add_foreign_key "entry_bicycles", "terminal_entries", column: "terminal_entries_id"
  add_foreign_key "reserve_histories", "reserve_states", column: "reserve_states_id"
  add_foreign_key "reserve_histories", "reserves", column: "reserves_id"
  add_foreign_key "reserves", "accounts", column: "accounts_id"
  add_foreign_key "reserves", "bicycles", column: "bicycles_id"
  add_foreign_key "users", "accounts"
end
