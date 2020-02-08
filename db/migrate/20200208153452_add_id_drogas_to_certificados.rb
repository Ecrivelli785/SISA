class AddIdDrogasToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :id_drogas, :integer
  end
end
