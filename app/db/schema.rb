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

ActiveRecord::Schema.define(version: 20170101140541) do

  create_table "issues", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "issueno",     limit: 65535
    t.text     "fy",          limit: 65535
    t.text     "project",     limit: 65535
    t.text     "risk",        limit: 65535
    t.text     "status",      limit: 65535
    t.text     "controlarea", limit: 65535
    t.text     "description", limit: 65535
    t.date     "duedate"
    t.text     "actionowner", limit: 65535
    t.text     "lob",         limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
