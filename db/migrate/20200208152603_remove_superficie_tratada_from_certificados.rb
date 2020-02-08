class RemoveSuperficieTratadaFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :superficie_tratada, :string
  end
end
