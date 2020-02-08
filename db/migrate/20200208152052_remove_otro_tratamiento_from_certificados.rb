class RemoveOtroTratamientoFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :otro_tratamiento, :string
  end
end
