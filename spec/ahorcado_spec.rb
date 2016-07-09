require 'juegoahorcado'

describe JuegoAhorcado do
	it "deberia devolver la palabra secreta REFRIGERADOR" do
		ahorcado =JuegoAhorcado.new() #arrange
		ahorcado.palabrasecreta.should == "REFRIGERADOR"  #act #assert
	end

	it "el contador de intentos debe inicar en 6" do
		ahorcado = JuegoAhorcado.new()
		ahorcado.contadorintentos.should == 6
	end

	it "el contador de coincidencias debe iniciar en 0" do
		ahorcado =JuegoAhorcado.new()
		ahorcado.contadorcoincidencias.should == 0
	end

	it "debe devolver la longitud de la palabra secreta" do
		ahorcado = JuegoAhorcado.new()
		ahorcado.longitud.should == 12
	end
	it "Al ingresar una letra que nos devuelva la misma letra" do
		ahorcado = JuegoAhorcado.new()
		ahorcado.ingresarletra("T")
		ahorcado.letra.should == "T"
	end
	it "Al ingresar letra valida, la variable coincidencia debe incrementarse en n unidades" do
		ahorcado = JuegoAhorcado.new()
		ahorcado.ingresarletra("E")
		ahorcado.contadorcoincidencias.should == 2
	end
	it "Al ingresar letra no valida, 
		la cantidad de intentos debe disminuir en una unidad" do
		ahorcado = JuegoAhorcado.new()
		ahorcado.ingresarletra("W")
		ahorcado.contadorintentos.should == 5
	end
	it "Debe devolver la pista de la palabra secreta" do
		ahorcado = JuegoAhorcado.new()
		ahorcado.pista.should=="Electrodomestico del hogar"
	end
	it "Devolver 1 si el juego termino y adivino la palabra" do
		ahorcado = JuegoAhorcado.new()
		ahorcado.ingresarletra("U")
		ahorcado.ingresarletra("U")
		ahorcado.ingresarletra("U")
		ahorcado.ingresarletra("U")
		ahorcado.ingresarletra("U")
		ahorcado.ingresarletra("U")
		ahorcado.juegoterminado.should == 0
	end
end
