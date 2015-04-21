class Relacion < ActiveRecord::Base


 belongs_to :articulo

 belongs_to :categoria
 
end
