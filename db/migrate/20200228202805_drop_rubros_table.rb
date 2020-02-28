class DropRubrosTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :Rubros
  end
end

