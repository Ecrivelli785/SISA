class AddIdVectorToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :id_vector, :integer
  end
end
