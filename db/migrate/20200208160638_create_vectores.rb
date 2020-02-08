class CreateVectores < ActiveRecord::Migration[6.0]
  def change
    create_table :vectores do |t|
      t.string :descripcion_tv

      t.timestamps
    end
  end
end
