class AddIdRubroToClientes < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :id_rubro, :integer
  end
end
