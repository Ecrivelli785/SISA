class CreateTecnicos < ActiveRecord::Migration[6.0]
  def change
    create_table :tecnicos do |t|
      t.integer :dni
      t.string :apellido
      t.string :nombre
      t.string :domicilio
      t.integer :telefono

      t.timestamps
    end
  end
end
