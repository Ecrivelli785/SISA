class RemoveTelefonoFromTecnicos < ActiveRecord::Migration[6.0]
  def change

    remove_column :tecnicos, :telefono, :integer
  end
end
