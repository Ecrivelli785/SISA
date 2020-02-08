class AddObservacionesClienteToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :observaciones_cliente, :string
  end
end
