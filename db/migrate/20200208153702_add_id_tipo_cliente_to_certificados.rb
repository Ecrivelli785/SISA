class AddIdTipoClienteToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :id_tipo_cliente, :integer
  end
end
