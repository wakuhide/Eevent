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

ActiveRecord::Schema.define(version: 20160115133756) do

  create_table "event_users", force: :cascade do |t|
    t.integer  "event_id",     limit: 4
    t.integer  "user_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "content_type", limit: 255
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "image_url",   limit: 65535
    t.text     "detail",      limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
    t.integer  "member",      limit: 4
    t.integer  "rest_member", limit: 4
    t.integer  "num",         limit: 4
  end

  create_table "inquiries", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "email",      limit: 255
    t.string   "name",       limit: 255
    t.text     "message",    limit: 65535
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "questionnaires", force: :cascade do |t|
    t.string   "cached_satisfaction_list", limit: 255
    t.string   "cached_trigger_list",      limit: 255
    t.text     "body",                     limit: 65535
    t.boolean  "template"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "family_name",            limit: 255
    t.string   "first_name",             limit: 255
    t.string   "family_name_kana",       limit: 255
    t.string   "first_name_kana",        limit: 255
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "job",                    limit: 255
    t.string   "fullname",               limit: 255
    t.integer  "gender",                 limit: 4
    t.text     "message",                limit: 65535
    t.integer  "age",                    limit: 4
    t.integer  "TEL",                    limit: 4
    t.string   "event",                  limit: 255
    t.time     "event_time"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
