class AddArticuloIdToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :articulo_id, :integer
  end
end
