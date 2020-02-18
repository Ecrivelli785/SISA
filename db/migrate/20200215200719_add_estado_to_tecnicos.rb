class AddEstadoToTecnicos < ActiveRecord::Migration[6.0]
  def change
    add_column :tecnicos, :estado, :boolean
  end
end
