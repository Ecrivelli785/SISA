class AddSuperficieToCertificados < ActiveRecord::Migration[6.0]
  def change
    add_column :certificados, :superficie, :string
  end
end
