class Responsable < ApplicationRecord
	has_many :turnos

	def capitalized_nombre
    nombre.capitalize
  	end
end
