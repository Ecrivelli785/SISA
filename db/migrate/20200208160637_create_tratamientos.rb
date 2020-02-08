class CreateTratamientos < ActiveRecord::Migration[6.0]
  def change
    create_table :tratamientos do |t|
      t.string :descripcion_tt

      t.timestamps
    end
  end
end
