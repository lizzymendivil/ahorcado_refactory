Feature: Juego
	Scenario: Obtener palabra secreta
	Given estoy en la pagina inicial del juego
	Then quiero ver "Tu palabra secreta tiene 12 caracteres"

	Scenario: Ingresar letra
	Given estoy en la pagina inicial del juego
	When lleno el campo "letra" con el valor "a"
	Then presiono el boton "adivinar"

	Scenario: Mostrar coincidencia
	Given estoy en la pagina inicial del juego
	When si la "letra" ingresada corresponde a la "palabra"
	Then quiero ver "El numero de coincidencias es 1."

	Scenario: Ganar juego
	Given estoy en la pagina inicial del juego
	When completo la palabra secreta 
	Then quiero ver el mensaje "G A N A S T E !!!"
	



