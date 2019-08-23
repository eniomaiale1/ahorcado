Feature: Iniciar juego
    Como jugador de ahorcado
    Quiero ver una pantalla de bienvenida
    Para poder empezar una partida

Scenario: debe aparecer un titulo de bienvenida
    Given que abri la aplicacion
    Then debo ver un titulo de bienvenida "Bienvenido al Simple Hang v2.0"

Scenario: debe poder iniciar una partida y mostrar el titulo inicio de juego
    Given que abri la aplicacion
    When inicio el juego
    Then debo ver un titulo de juego iniciado "Simple Hang v2.0 iniciado"