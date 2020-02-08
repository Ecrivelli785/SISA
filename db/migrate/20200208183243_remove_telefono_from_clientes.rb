class RemoveTelefonoFromClientes < ActiveRecord::Migration[6.0]
  def change

    remove_column :clientes, :telefono, :integer
  end
end
