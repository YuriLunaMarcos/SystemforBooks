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

ActiveRecord::Schema.define(version: 20140606165406) do

  create_table "books", force: true do |t|
    t.string   "claveinterna"
    t.string   "ejemplar"
    t.string   "autor"
    t.string   "editorial"
    t.string   "tema"
    t.string   "isbn"
    t.string   "categoria"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["provider_id"], name: "index_books_on_provider_id"

  create_table "clients", force: true do |t|
    t.string   "nombreClient"
    t.string   "telefonoClient"
    t.string   "direccionClient"
    t.string   "emailClient"
    t.string   "rfcClient"
    t.string   "razonsocialClient"
    t.string   "facebookClient"
    t.string   "linkedinClient"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "NombreProvider"
    t.string   "direccionProvider"
    t.string   "fechadasoProvider"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombreUser"
    t.string   "direccionUser"
    t.string   "telefonoUser"
    t.string   "emailUser"
    t.string   "contrasenaUser"
    t.string   "roluser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
