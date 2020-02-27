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

ActiveRecord::Schema.define(version: 2020_02_22_123838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buscadors", force: :cascade do |t|
    t.string "palabra"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "certificados", force: :cascade do |t|
    t.integer "id_certificado"
    t.integer "nro_certificado"
    t.date "fecha_aplicacion"
    t.date "fecha_vencimiento"
    t.time "hora_aplicacion"
    t.date "proximo_tratamiento"
    t.integer "id_cliente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "id_rubro"
    t.integer "id_tratamiento"
    t.integer "id_vector"
    t.string "superficie"
    t.integer "id_drogas"
    t.string "codigo"
    t.integer "id_tipo_cliente"
    t.string "observaciones_certificado"
    t.integer "id_tecnico"
    t.boolean "estado"
    t.integer "cliente_id"
    t.string "droga_tipo"
    t.string "tratamiento_tipo"
    t.string "vector_tipo"
  end

  create_table "clientes", force: :cascade do |t|
    t.integer "id_cliente"
    t.string "apellido"
    t.string "nombre"
    t.string "domicilio"
    t.string "celular"
    t.string "barrio"
    t.boolean "estado"
    t.string "estado_mkt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cuit"
    t.string "correo"
    t.string "observaciones_cliente"
    t.integer "id_tipo_cliente"
    t.integer "id_rubro"
    t.string "telefono"
    t.string "client_type"
    t.integer "cliente_id"
  end

  create_table "drogas", force: :cascade do |t|
    t.string "descripcion_td"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rubros", force: :cascade do |t|
    t.string "descripcion_tr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tecnicos", force: :cascade do |t|
    t.integer "dni"
    t.string "apellido"
    t.string "nombre"
    t.string "domicilio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "observaciones_tecnico"
    t.string "telefono"
    t.boolean "estado"
  end

  create_table "tipos_clientes", force: :cascade do |t|
    t.string "descripcion_tc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "descripcion_tt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vectores", force: :cascade do |t|
    t.string "descripcion_tv"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
