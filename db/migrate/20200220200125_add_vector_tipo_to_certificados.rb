class AddVectorTipoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :vector_tipo, :string
  end
end
