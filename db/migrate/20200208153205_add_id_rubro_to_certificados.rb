class AddIdRubroToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :id_rubro, :integer
  end
end
