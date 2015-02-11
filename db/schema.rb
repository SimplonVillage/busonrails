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

ActiveRecord::Schema.define(version: 20150211170726) do

  create_table "classes", force: true do |t|
    t.string   "nom"
    t.integer  "ecole_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "classes", ["ecole_id"], name: "index_classes_on_ecole_id"

  create_table "classes_niveaus", id: false, force: true do |t|
    t.integer "classe_id"
    t.integer "niveau_id"
  end

  add_index "classes_niveaus", ["classe_id"], name: "index_classes_niveaus_on_classe_id"
  add_index "classes_niveaus", ["niveau_id"], name: "index_classes_niveaus_on_niveau_id"

  create_table "ecoles", force: true do |t|
    t.string   "nom"
    t.string   "adresse"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enfants", force: true do |t|
    t.string   "nomenfant"
    t.string   "prenomenfant"
    t.string   "datenaissance"
    t.string   "classe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.date     "birthday"
    t.string   "nom"
    t.integer  "niveau_id"
    t.string   "sexe"
  end

  create_table "niveaus", force: true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.text     "adresse"
    t.string   "urgnom"
    t.string   "urgprenom"
    t.text     "urgadresse"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "civilite"
    t.string   "civilite2"
    t.string   "urgtel"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "tel3"
  end

  create_table "users", force: true do |t|
    t.string   "email",                            null: false
    t.string   "crypted_password",                 null: false
    t.string   "salt",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",            default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
