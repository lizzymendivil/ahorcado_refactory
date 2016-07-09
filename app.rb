require 'sinatra'
require './lib/juegoahorcado'

configure do
 	enable :sessions
	@@juegoahorcado = JuegoAhorcado.new()
	
end

get '/' do
    @cantidad = @@juegoahorcado.longitud()
	@nuevapalabra=@@juegoahorcado.palabrasecreta
	@pista=@@juegoahorcado.pista
	erb :inicio
end
post '/jugar'do
	@nuevapalabra=params[:palabrasecreta]
	@nuevapista=params[:pista]
	@@juegoahorcado.palabrasecreta = @nuevapalabra
	@@juegoahorcado.pista=@nuevapista
	if(@nuevapalabra.length>0)
		jugarjuego		
	else
		puts"Debe ingresar una palabra"
	end
end
def jugarjuego
	@cantidad = @@juegoahorcado.longitud()
	@juegoterminado = @@juegoahorcado.juegoterminado()
	@letter = params[:letra] #.upcase
	@@juegoahorcado.ingresarletra("#{@letter}")  

	#@@juegoahorcado.ingresarletra("A")
	@coincidencias = @@juegoahorcado.contadorcoincidencias()
	@intentos = @@juegoahorcado.contadorintentos()
	@mensaje = @@juegoahorcado.mensaje()
	erb :test
end
post '/' do
	jugarjuego
end

