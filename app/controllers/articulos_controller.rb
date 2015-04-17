class ArticulosController < ApplicationController
  
  before_action :set_articulo

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

  end

  private

  def articulo_params
  	params.require(:articulo).permit(:titulo, :descripcion)
  end

  def set_articulo
  	@articulo = Articulo.find(params[:id])
  end
end
