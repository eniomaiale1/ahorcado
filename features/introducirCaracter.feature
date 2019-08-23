Feature: Iniciar juego
    Como jugador de ahorcado
    Quiero tener la opcion de introducir letras
    Para adivinar la palabra

Scenario: debe poder introducir una letra
    Given que abri la aplicacion
    And inicio el juego
    And la palabra almacenada es "Agua"
    When introduzco el caracar "A" en "letra"
    And envio la letra
    Then debo ver un mensaje "Letra contenida en la palabra"

# Scenario: debe poder introducir una letra
#     Given que abri la aplicacion
#     And inicio el juego
#     And la palabra almacenada es "Agua"
#     When introduzco el caracar "b"
#     Then debo ver un mensaje "Letra no contenida en la palabra"