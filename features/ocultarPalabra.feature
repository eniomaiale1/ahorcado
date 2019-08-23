Feature: Ocultar palabra dada
    Como jugador de ahorcado
    Quiero ver una pantalla la palabra ya oculta 
    Para poder adivinarla

Scenario: la palabra ya debe estar oculta
   Given que abri la aplicacion
   And inicio el juego
   And la palabra almacenada es "Agua"
   And debo ver un titulo de juego iniciado "Simple Hang v2.0 iniciado"
   Then debo ver la palabra como "_ _ _ _"