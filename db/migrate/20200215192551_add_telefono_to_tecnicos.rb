class AddTelefonoToTecnicos < ActiveRecord::Migration[6.0]
  def change
    add_column :tecnicos, :telefono, :string
  end
end
