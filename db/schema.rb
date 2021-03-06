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

ActiveRecord::Schema.define(version: 20170811003619) do

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.decimal  "latitude",     precision: 10, scale: 6
    t.decimal  "longitude",    precision: 10, scale: 6
  end

  create_table "company_details", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "logo"
    t.string   "phone"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contributors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "debt_payments", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "financial_expense_id"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["financial_expense_id"], name: "index_debt_payments_on_financial_expense_id"
  end

  create_table "financial_expenses", force: :cascade do |t|
    t.integer  "amount"
    t.text     "description"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "debt"
    t.boolean  "active_debt", default: true
  end

  create_table "financial_incomes", force: :cascade do |t|
    t.integer  "amount"
    t.integer  "project_payment_id"
    t.integer  "service_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["project_payment_id"], name: "index_financial_incomes_on_project_payment_id"
    t.index ["service_id"], name: "index_financial_incomes_on_service_id"
  end

  create_table "project_contributors", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "contributor_id"
    t.float    "percentage"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["contributor_id"], name: "index_project_contributors_on_contributor_id"
    t.index ["project_id"], name: "index_project_contributors_on_project_id"
  end

  create_table "project_payments", force: :cascade do |t|
    t.integer  "project_id"
    t.float    "payment"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_project_payments_on_project_id"
    t.index ["user_id"], name: "index_project_payments_on_user_id"
  end

  create_table "project_statuses", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "name"
    t.string   "description"
    t.date     "initial_date"
    t.date     "final_date"
    t.float    "total_cost"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "project_status_id"
    t.float    "percentage"
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["project_status_id"], name: "index_projects_on_project_status_id"
  end

  create_table "service_charges", force: :cascade do |t|
    t.float    "amount"
    t.text     "description"
    t.integer  "service_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["service_id"], name: "index_service_charges_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "client_name"
    t.text     "customer_contact_information"
    t.string   "service_type"
    t.text     "description"
    t.integer  "amount"
    t.date     "execution_date"
    t.string   "status"
    t.integer  "business_gain"
    t.text     "conclusions"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.date     "finish_date"
    t.integer  "client_id"
    t.boolean  "other_client",                 default: false
    t.index ["client_id"], name: "index_services_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "state"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
