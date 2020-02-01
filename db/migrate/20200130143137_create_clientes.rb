class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.integer :id_cliente
      t.string :apellido
      t.string :nombre
      t.string :domicilio
      t.integer :telefono
      t.string :celular
      t.string :barrio
      t.string :rubro
      t.boolean :estado
      t.string :estado_mkt

      t.timestamps
    end
  end
end
