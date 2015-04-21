class CategoriasController < ApplicationController
  
  def new
    @categoria = Categoria.new
  end

  def create

  	@categoria = Categoria.new(categoria_params)

   if @categoria.save

   	redirect_to new_categoria_path

   else

   	render 'new'

   end

  end

  def show

    @categoria = Categoria.find(params[:id])
    @articulos = @categoria.articulos

  end

  private

  def categoria_params

  	params.require(:categoria).permit(:nombre)

  end
end
