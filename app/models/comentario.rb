class Comentario < ActiveRecord::Base

	belongs_to :articulo
	belongs_to :usuario

end
