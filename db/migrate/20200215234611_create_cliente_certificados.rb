class CreateClienteCertificados < ActiveRecord::Migration[6.0]
  def change
    create_table :cliente_certificados do |t|
        t.integer :cliente_id
        t.integer :certificado_id
      t.timestamps
    end
  end
end
