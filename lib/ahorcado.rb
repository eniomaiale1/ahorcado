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

    def enmascararPalabra
        enmascarado = ""
        @palabra.split('').each do |caracter|
            enmascarado += "_ "
        end
        enmascarado
    end

    def actualizaMascara letra
        enmascarado = ""
        @palabra.split('').each do |caracter|
            if letra.downcase == caracter.downcase
                enmascarado += "#{caracter} "
            else
                enmascarado += "_ "
            end
        end
        enmascarado
    end
end