class CreateCertificados < ActiveRecord::Migration[6.0]
  def change
    create_table :certificados do |t|
      t.integer :id_certificado
      t.integer :nro_certificado
      t.string :rubro
      t.string :tratamiento
      t.string :otro_tratamiento
      t.integer :vectores_tratados
      t.string :otros_vectores
      t.string :superficie_tratada
      t.string :veneno_clase
      t.integer :droga_usada
      t.string :otra_droga_usada
      t.date :fecha_aplicacion
      t.date :fecha_vencimiento
      t.time :hora_aplicacion
      t.date :proximo_tratamiento
      t.string :estado
      t.float :importe
      t.integer :id_cliente
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
