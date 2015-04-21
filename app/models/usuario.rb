class Usuario < ActiveRecord::Base

	has_secure_password

	validates :nombre_usuario, :presence => true
end
