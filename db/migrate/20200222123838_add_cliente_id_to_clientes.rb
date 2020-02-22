class AddClienteIdToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :cliente_id, :integer
  end
end
