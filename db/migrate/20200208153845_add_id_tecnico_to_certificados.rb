class AddIdTecnicoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :id_tecnico, :integer
  end
end
