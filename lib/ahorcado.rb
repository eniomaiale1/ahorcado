class Ahorcado
    
    def initialize palabra = "Napoleon"
        if palabra.length == 0
            @palabra = "Napoleon"
        else
            @palabra = palabra
        end
    end

    def verificarLetra letra

    end

    def obtenerPalabra
        @palabra
    end
end