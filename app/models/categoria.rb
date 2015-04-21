class Categoria < ActiveRecord::Base

has_many :relacions

has_many :articulos, through: :relacions 
end
