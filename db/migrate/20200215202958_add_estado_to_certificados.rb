class AddEstadoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :estado, :boolean
  end
end
