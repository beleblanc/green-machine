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

ActiveRecord::Schema.define(version: 20150503215838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calibration_checks", force: true do |t|
    t.integer  "day_report_id"
    t.integer  "type"
    t.boolean  "checked"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calibration_checks", ["day_report_id"], name: "index_calibration_checks_on_day_report_id", using: :btree

  create_table "carrier_checks", force: true do |t|
    t.integer  "day_report_id"
    t.boolean  "radiator_screen"
    t.boolean  "bogie_leaks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carrier_checks", ["day_report_id"], name: "index_carrier_checks_on_day_report_id", using: :btree

  create_table "day_reports", force: true do |t|
    t.integer  "user_id"
    t.integer  "machine_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "day_reports", ["date", "machine_id"], name: "index_day_reports_on_date_and_machine_id", unique: true, using: :btree
  add_index "day_reports", ["machine_id"], name: "index_day_reports_on_machine_id", using: :btree
  add_index "day_reports", ["user_id"], name: "index_day_reports_on_user_id", using: :btree

  create_table "end_of_day_reports", force: true do |t|
    t.integer  "day_report_id"
    t.boolean  "hydraulic_oil"
    t.boolean  "loose_bolt_check"
    t.boolean  "leak_check"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "end_of_day_reports", ["day_report_id"], name: "index_end_of_day_reports_on_day_report_id", using: :btree

  create_table "greasing_points", force: true do |t|
    t.integer  "day_report_id"
    t.boolean  "rear_del_kni_slibea"
    t.boolean  "joint_rear_del_knicyl"
    t.boolean  "mea_whe_gli_bea"
    t.boolean  "sli_bea_fee_rol_sup"
    t.boolean  "rea_bar_gli_joi_bea"
    t.boolean  "sli_bra_fro_del_kni"
    t.boolean  "joint_front_del_knicyl"
    t.boolean  "sli_bea_fro_del_knicyl"
    t.boolean  "joi_bea_fee_rolcyl"
    t.boolean  "sli_bea_til_cylaxl"
    t.boolean  "bea_piv_frapint"
    t.boolean  "til_cyj_joibea"
    t.boolean  "saw_bar_joibea"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "greasing_points", ["day_report_id"], name: "index_greasing_points_on_day_report_id", using: :btree

  create_table "harvester_head_checks", force: true do |t|
    t.integer  "day_report_id"
    t.boolean  "lubrication_device"
    t.boolean  "saw_chair_tension"
    t.boolean  "saw_chain_sharpness"
    t.boolean  "knives_sharpness"
    t.boolean  "chain_oil"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "harvester_head_checks", ["day_report_id"], name: "index_harvester_head_checks_on_day_report_id", using: :btree

  create_table "machines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machines", ["name"], name: "index_machines_on_name", unique: true, using: :btree

  create_table "morning_reports", force: true do |t|
    t.decimal  "machine_hours"
    t.boolean  "timesheet"
    t.boolean  "engine_oil"
    t.boolean  "hydraulic_oil"
    t.boolean  "slewing_oil"
    t.boolean  "min_fuel_level"
    t.string   "chain_and_bar"
    t.boolean  "leak_check"
    t.boolean  "bolt_check"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day_report_id"
  end

  add_index "morning_reports", ["day_report_id"], name: "index_morning_reports_on_day_report_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
