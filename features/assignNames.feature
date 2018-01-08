Feature:  Como jugador
          Quiero asignar nombres a los jugadores
          Para saber a que jugador le toca escoger una casilla
          
Scenario: Asignar nombres
          Given visito la pagina para ingresar los nombres de los jugadores "/players"
          When ingreso los nombres en los espacios de "Jugador 1" y "Jugador 2"
          And preciono el boton "Siguiente"
          Then deberia mostrar la pagina para escoger que jugador empezara "/whoStarts"
          And mostrar el titulo "¿Quién empezará?"