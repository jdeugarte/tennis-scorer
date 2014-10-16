Feature: Bienvenida

	Scenario: Pagina inicio
		Given dado que me encuentro en la pagina principal
		Then Veo el mensaje "Bienvenido Tenis Score" y veo la imagen "/images/tennis.jpg"
		When lleno "jugador1" con "Jorge" y lleno "jugador2" con "Pedro" y picnho "aceptar"
		Then veo los nombres "Jorge" y "Pedro"