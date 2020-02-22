class AddClientTypeToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :client_type, :string
  end
end
