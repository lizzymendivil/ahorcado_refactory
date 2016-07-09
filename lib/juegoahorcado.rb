class JuegoAhorcado
	def initialize()
		@palabrasecreta = "REFRIGERADOR"
		@contadorintentos = 6
		@contadorcoincidencias = 0
		@letra
		@pista="Electrodomestico del hogar"
		@juegoterminado = 2 #0 = perdio #1 gano #2 continua el juego
	end
	
	def pista
		@pista
	end
	def pista=(new_pista)
		@pista = new_pista
	end
	def juegoterminado
		if(longitud == @contadorcoincidencias)
			return 1
		end
		if(@contadorintentos == 0)
			return 0
		end
		return 2
	end
	def palabrasecreta
		@palabrasecreta
	end
	def palabrasecreta=(new_palabrasecreta)
		@palabrasecreta = new_palabrasecreta
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
    def ingresarletra(letra)
		@letra=letra
		buscarletra	
	end
	def letra
		return @letra
	end
	
	def buscarletra
		bolok=true
		@palabrasecreta.each_char do|l|
			if l==@letra.upcase
				@contadorcoincidencias += 1
				bolok=false
			end
		end
		if bolok
			@contadorintentos -= 1			
		end
	end
	def mensaje
		if(longitud == @contadorcoincidencias)
			return "Ganaste"
		end
		if(@contadorintentos == 0)
			return "Perdiste, la palabra secreta es : #{@palabrasecreta}" 
		end
		return ""
	end
private:buscarletra
end
