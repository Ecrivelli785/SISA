class CreateTiposClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :tipos_clientes do |t|
      t.string :descripcion_tc

      t.timestamps
    end
  end
end
