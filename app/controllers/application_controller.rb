class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :usuario_autenticado, :autenticado?
  
  def usuario_autenticado
  	@current_user ||= Usuario.find(session[:user]) if session[:user]
  end

  def autenticado?

  	!!usuario_autenticado #true

  end

end
