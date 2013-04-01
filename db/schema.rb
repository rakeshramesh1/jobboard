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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130331162015) do

  create_table "emp_jobs", :force => true do |t|
    t.string   "EmpID"
    t.string   "JobID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "EmpId"
    t.date     "dob"
    t.string   "Qualification"
    t.string   "Phone"
    t.string   "Mobile"
    t.text     "address"
    t.string   "location"
    t.string   "Industry"
    t.string   "function"
    t.integer  "exp_year"
    t.integer  "exp_mon"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "employers", :force => true do |t|
    t.string   "EmpId"
    t.string   "Phone"
    t.string   "Mobile"
    t.text     "address"
    t.string   "location"
    t.string   "Industry"
    t.string   "function"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "empr_jobs", :force => true do |t|
    t.string   "EmprID"
    t.string   "JobID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "JobId"
    t.string   "type"
    t.text     "JobDesc"
    t.integer  "exp_year"
    t.integer  "exp_mon"
    t.string   "salary"
    t.integer  "Vacency"
    t.string   "Location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "user_type"
  end

end
