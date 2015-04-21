class ArticulosController < ApplicationController
  
  before_action :set_articulo, :only => [:show]

  before_filter :required_user
  
  def index
  	@articulos = Articulo.all
  end

  def new
  	@articulo = Articulo.new
  end

  def create
  	@articulo = Articulo.new(articulo_params)

  	if @articulo.save

  		redirect_to @articulo

  	else

  		render 'new'

  	end

  end

  def show
  	@comentarios = Comentario.all
  	@comentario = Comentario.new
    @relacion = Relacion.new
    @categorias = @articulo.categorias
  end

  private

  def articulo_params
  	params.require(:articulo).permit(:titulo, :descripcion)
  end

  def set_articulo
  	@articulo = Articulo.find(params[:id])
  end
end
