class RemoveOtrosVectoresFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :otros_vectores, :string
  end
end
