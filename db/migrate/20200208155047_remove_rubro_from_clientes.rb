class RemoveRubroFromClientes < ActiveRecord::Migration[6.0]
  def change

    remove_column :clientes, :rubro, :string
  end
end
