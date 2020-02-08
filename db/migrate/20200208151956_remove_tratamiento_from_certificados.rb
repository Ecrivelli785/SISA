class RemoveTratamientoFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :tratamiento, :string
  end
end
