Feature: Ocultar palabra dada
    Como jugador de ahorcado
    Quiero ver una pantalla la palabra ya oculta 
    Para poder adivinarla

Scenario: debe aparecer un titulo de bienvenida
    Given que abri la aplicacion
    Then debo ver un titulo de bienvenida "Bienvenido al Simple Hang v2.0"

Scenario: la palabra ya debe estar oculta
    Given que abri la aplicacion
    And inicio el juego
    And debo ver un titulo de juego iniciado "Simple Hang v2.0 iniciado"
    And que ya tengo una "palabra"
    Then debo ver la palabra como "*******"