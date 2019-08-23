class Ahorcado
    
    def initialize palabra = "Napoleon"
        #palabras["Napoleon","Porfirio","Platon"]
        @palabra = palabra
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