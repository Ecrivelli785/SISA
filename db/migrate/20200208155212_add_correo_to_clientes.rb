class AddCorreoToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :correo, :string
  end
end
