class RemoveImporteFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :importe, :float
  end
end
