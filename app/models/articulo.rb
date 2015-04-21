class Articulo < ActiveRecord::Base

	has_many :comentarios

	has_many :relacions

	has_many :categorias, through: :relacions
	
end
