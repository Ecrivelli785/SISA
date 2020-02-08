class RemoveOtraDrogaUsadaFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :otra_droga_usada, :string
  end
end
