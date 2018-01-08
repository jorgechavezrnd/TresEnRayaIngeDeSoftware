Feature:  Como jugador
          Quiero iniciar una partida
          Para empezar a jugar
          
Scenario: Pagina principal
          Given visito la pagina principal "/"
          Then deberia ver el titulo "Tres En Raya"
          And ver el boton "Jugar"
          
Scenario: Iniciar partida
          Given visito la pagina principal "/"
          When preciono el boton "Jugar"
          Then deberia visitar la pagina para ingresar los nombres de los jugadores "/players"
          Then ver el titulo "Bienvenido al juego Tres en raya"
          Then ver "Jugador 1"
          Then ver "Jugador 2"
          And ver el boton "Siguiente"