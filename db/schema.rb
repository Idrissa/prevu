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

ActiveRecord::Schema.define(version: 20150314181317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adherents", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.integer  "status_matrimonial"
    t.date     "date_de_naissance"
    t.string   "lieu_de_naissance"
    t.text     "adresse"
    t.string   "telephone1"
    t.string   "telephone2"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "status"
    t.boolean  "payer"
    t.datetime "last_activation"
    t.datetime "last_suspension"
    t.datetime "last_delete"
    t.datetime "paiement_date"
    t.float    "montant_cotisation"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "matricule"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "password_salt"
    t.integer  "sexe"
    t.integer  "affiliation"
    t.integer  "parrain_id"
  end

  add_index "adherents", ["email"], name: "index_adherents_on_email", unique: true, using: :btree
  add_index "adherents", ["matricule"], name: "index_adherents_on_matricule", unique: true, using: :btree

  create_table "formules", force: :cascade do |t|
    t.integer  "structure_assurance_id"
    t.string   "nom",                                null: false
    t.integer  "periode",                            null: false
    t.integer  "occurrence_periode",     default: 1, null: false
    t.float    "montant_adhesion",                   null: false
    t.float    "montant_cotisation",                 null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "formules", ["structure_assurance_id"], name: "index_formules_on_structure_assurance_id", using: :btree

  create_table "formules_structure_sanitaires", id: false, force: :cascade do |t|
    t.integer "structure_sanitaire_id", null: false
    t.integer "formule_id",             null: false
  end

  create_table "micro_assurances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mutuelles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "structure_assurances", force: :cascade do |t|
    t.string   "nom"
    t.string   "adresse"
    t.date     "date_adhesion"
    t.string   "numero_agrement"
    t.string   "couleur"
    t.boolean  "actif",             default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "structure_id"
    t.string   "structure_type"
  end

  create_table "structure_sanitaires", force: :cascade do |t|
    t.string   "nom",                               null: false
    t.string   "adresse"
    t.date     "date_adhesion"
    t.boolean  "actif",             default: false
    t.integer  "structure_id"
    t.string   "structure_type"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "structure_sanitaires", ["structure_type", "structure_id"], name: "index_structure_sanitaires_on_structure_type_and_structure_id", using: :btree

  add_foreign_key "formules", "structure_assurances"
end
