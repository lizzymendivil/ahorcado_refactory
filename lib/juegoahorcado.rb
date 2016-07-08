class JuegoAhorcado
	def initialize()
		@palabrasecreta = "REFRIGERADOR"
		@contadorintentos = 6
		@contadorcoincidencias = 0
		@letra
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
			if l==@letra
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
