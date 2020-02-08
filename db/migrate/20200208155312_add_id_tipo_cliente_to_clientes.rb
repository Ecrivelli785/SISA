class AddIdTipoClienteToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :id_tipo_cliente, :integer
  end
end
