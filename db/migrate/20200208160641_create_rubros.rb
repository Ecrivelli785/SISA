class CreateRubros < ActiveRecord::Migration[6.0]
  def change
    create_table :rubros do |t|
      t.string :descripcion_tr

      t.timestamps
    end
  end
end
