class AddTelefonoToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :telefono, :string
  end
end
