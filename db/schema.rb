# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_01_190541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certificados", force: :cascade do |t|
    t.integer "id_certificado"
    t.integer "nro_certificado"
    t.string "rubro"
    t.string "tratamiento"
    t.string "otro_tratamiento"
    t.integer "vectores_tratados"
    t.string "otros_vectores"
    t.string "superficie_tratada"
    t.string "veneno_clase"
    t.integer "droga_usada"
    t.string "otra_droga_usada"
    t.date "fecha_aplicacion"
    t.date "fecha_vencimiento"
    t.time "hora_aplicacion"
    t.date "proximo_tratamiento"
    t.string "estado"
    t.float "importe"
    t.integer "id_cliente"
    t.bigint "cliente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "observaciones"
    t.index ["cliente_id"], name: "index_certificados_on_cliente_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.integer "id_cliente"
    t.string "apellido"
    t.string "nombre"
    t.string "domicilio"
    t.integer "telefono"
    t.string "celular"
    t.string "barrio"
    t.string "rubro"
    t.boolean "estado"
    t.string "estado_mkt"
    t.date "created_at", null: false
    t.date "updated_at", null: false
  end

  create_table "tecnicos", force: :cascade do |t|
    t.integer "dni"
    t.string "apellido"
    t.string "nombre"
    t.string "domicilio"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "certificados", "clientes"
end
