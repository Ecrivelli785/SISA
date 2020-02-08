class AddCuitToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :cuit, :string
  end
end
