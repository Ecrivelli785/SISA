class AddCodigoToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :codigo, :string
  end
end
