class RemoveVenenoClaseFromCertificados < ActiveRecord::Migration[6.0]
  def change

    remove_column :certificados, :veneno_clase, :string
  end
end
