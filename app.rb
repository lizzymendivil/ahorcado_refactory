require 'sinatra'
require './lib/juegoahorcado'

configure do
 	enable :sessions
	@@juegoahorcado = JuegoAhorcado.new()
end

get '/' do
    @cantidad = @@juegoahorcado.longitud()
	erb :inicio
end

post '/' do
	@juegoterminado = @@juegoahorcado.juegoterminado()
	@letter = params[:letra] #.upcase
	@@juegoahorcado.ingresarletra("#{@letter}")  

	#@@juegoahorcado.ingresarletra("A")
	@coincidencias = @@juegoahorcado.contadorcoincidencias()

	@intentos = @@juegoahorcado.contadorintentos()

	@mensaje = @@juegoahorcado.mensaje()

	
	erb :test
end

