class AddObservacionesTecnicoToTecnicos < ActiveRecord::Migration[6.0]
  def change
    add_column :tecnicos, :observaciones_tecnico, :string
  end
end
