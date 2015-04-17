class ComentariosController < ApplicationController
  
  def create

   @comentario = Comentario.new(comentario_params)

   if @comentario.save

   	@articulo = @comentario.articulo 
   	redirect_to @articulo

   else

   	render 'new'

   end

  end

  private

  def comentario_params

  	params.require(:comentario).permit(:contenido, :articulo_id)

  end
end
