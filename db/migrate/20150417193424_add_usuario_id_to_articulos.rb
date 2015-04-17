class AddUsuarioIdToArticulos < ActiveRecord::Migration
  def change
    add_column :articulos, :usuario_id, :integer
  end
end
