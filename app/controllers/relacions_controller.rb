class RelacionsController < ApplicationController
  def create
    @relacion = Relacion.new(relacion_params)

   if @relacion.save

   	@articulo = Articulo.find(@relacion.articulo_id)
   	#@articulo = @relacion.articulo_id
   	redirect_to @articulo
   else

   	render 'new'

   end

  end

  private

  def relacion_params

  	params.require(:relacion).permit(:categoria_id, :articulo_id)

  end

end
