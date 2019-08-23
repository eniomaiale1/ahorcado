class Ahorcado
    
    def initialize palabra = "Napoleon"
        if palabra.length == 0
            @palabra = "Napoleon"
        else
            @palabra = palabra
        end
    end

    def verificarLetra letra
        if (@palabra.count(letra) > 0)
            "Letra contenida en la palabra"
        else
            "Letra no contenida en la palabra"
        end
    end

    def obtenerPalabra
        @palabra
    end
end