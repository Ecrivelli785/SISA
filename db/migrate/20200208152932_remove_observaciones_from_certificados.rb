class RemoveObservacionesFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :observaciones, :text
  end
end
