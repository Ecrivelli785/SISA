class AddObservacionesToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :observaciones, :text
  end
end
