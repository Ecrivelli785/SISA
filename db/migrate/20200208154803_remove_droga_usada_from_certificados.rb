class RemoveDrogaUsadaFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :droga_usada, :integer
  end
end
