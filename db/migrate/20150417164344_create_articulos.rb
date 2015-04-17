class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
