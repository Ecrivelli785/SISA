class RemoveClienteIdFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :cliente_id, :bigint
  end
end
