class RemoveEstadoFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :estado, :string
  end
end
