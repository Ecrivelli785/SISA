class DropClienteCertificadosTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :cliente_certificados
  end
end
