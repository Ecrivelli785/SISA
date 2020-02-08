class CreateBuscadors < ActiveRecord::Migration[6.0]
  def change
    create_table :buscadors do |t|
      t.string :palabra

      t.timestamps
    end
  end
end
