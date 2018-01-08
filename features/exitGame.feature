Feature:  Como jugador
          Quiero salir del juego
          Para dejar de jugar
          
Scenario: Salir del juego
          Given visito la pagina con el tablero "/game"
          When preciono el boton "Salir"
          Then Vuelve a la pagina principal "/"