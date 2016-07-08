class JuegoAhorcado
	def initialize()
		@palabrasecreta = "REFRIGERADOR"
		@contadorintentos = 6
		@contadorcoincidencias = 0
	end
	
	def palabrasecreta
		@palabrasecreta
	end

	def contadorintentos
		@contadorintentos
	end
	
	def contadorcoincidencias
		@contadorcoincidencias
	end

	def longitud
		return @palabrasecreta.length
	end
end
