class RemoveRubroFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :rubro, :string
  end
end
