class AddIdTratamientoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :id_tratamiento, :integer
  end
end
