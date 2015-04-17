class ArticulosController < ApplicationController
  
  #before_action :set_params, :only => [:create]

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
end
