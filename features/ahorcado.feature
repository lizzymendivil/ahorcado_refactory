Feature: Juego
	Scenario: Obtener palabra secreta
	Given estoy en la pagina inicial del juego
	Then quiero ver "Tu palabra secreta tiene 14 caracteres"

	Scenario: Ingresar letra
	Given estoy en la pagina inicial del juego
	When lleno el campo "letra" con el valor "a"
	Then presiono el boton "adivinar"

	Scenario: mostrar coincidencia
	Given estoy en la pagina inicial del juego
	When presiono el boton "adivinar"
	Then quiero ver "El numero de coincidencias es 1"
	


