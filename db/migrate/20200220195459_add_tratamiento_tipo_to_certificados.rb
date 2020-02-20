class AddTratamientoTipoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :tratamiento_tipo, :string
  end
end
