class RemoveVectoresTratadosFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :vectores_tratados, :integer
  end
end
