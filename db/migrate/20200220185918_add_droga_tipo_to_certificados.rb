class AddDrogaTipoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :droga_tipo, :string
  end
end
