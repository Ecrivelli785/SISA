class AddObservacionesCertificadoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :observaciones_certificado, :string
  end
end
