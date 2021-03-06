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

ActiveRecord::Schema.define(version: 20171225085308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "degrees", primary_key: "degree_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "degree_name"
    t.string "degree_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designations", primary_key: "designation_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "designation_name"
    t.string "designation_decription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_credentials", primary_key: "user_id", id: :bigint, default: nil, force: :cascade do |t|
    t.string "password"
    t.integer "logged_in", limit: 2
    t.datetime "last_login_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_details", primary_key: "user_id", id: :bigint, default: nil, force: :cascade do |t|
    t.string "full_name"
    t.string "email_address"
    t.string "exam_roll_number"
    t.string "specialization"
    t.string "department"
    t.string "college_name"
    t.string "university_name"
    t.integer "degree_id"
    t.integer "designation_id"
    t.string "phone_number"
    t.integer "highest_qualification_degree_id"
    t.integer "teaching_experience_years"
    t.integer "research_experience_yrs"
    t.integer "industry_experience"
    t.bigint "proof_document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_role_mapping", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "user_role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "user_role_id"], name: "index_user_role_mapping_on_user_id_and_user_role_id"
  end

  create_table "user_roles", primary_key: "role_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "role_name"
    t.string "role_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "user_id", id: :bigint, default: nil, force: :cascade do |t|
    t.bigint "modified_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
