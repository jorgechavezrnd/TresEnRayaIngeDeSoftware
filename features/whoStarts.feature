Feature:  Como jugador
          Quiero escoger que jugador empezara
          Para no ser el primero cada vez que se crea una partida
          
Scenario: Escoger jugador
          Given visito la pagina para escoger que jugador empezara "/whoStarts"
          When selecciono el jugador que empezara y preciono el boton "Jugar"
          Then visito la pagina con el tablero del juego "/game"
          And muestra el mensaje "Turno del jugador:"