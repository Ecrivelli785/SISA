class AddClienteIdToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :cliente_id, :integer
  end
end
