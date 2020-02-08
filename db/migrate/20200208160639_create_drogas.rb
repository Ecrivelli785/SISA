class CreateDrogas < ActiveRecord::Migration[6.0]
  def change
    create_table :drogas do |t|
      t.string :descripcion_td

      t.timestamps
    end
  end
end
