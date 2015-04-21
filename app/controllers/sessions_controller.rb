class SessionsController < ApplicationController
  
  def new
  end

  def create

    usuario = Usuario.find_by_nombre_usuario(params[:nombre_usuario])

    if usuario && usuario.authenticate(params[:password])

      session[:user] = usuario.id
      redirect_to root_path

    else

    render 'new'

    end

  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end

end