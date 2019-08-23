require './lib/ahorcado.rb'
 
describe Ahorcado do
    it "obtengo la palabra Napoleon" do
        ahorcado = Ahorcado.new
        expect(ahorcado.obtenerPalabra).to eq 'Napoleon'
    end

    it "Puedo fijar la palabra Agua" do
        ahorcado = Ahorcado.new "Agua"
        expect(ahorcado.obtenerPalabra).to eq 'Agua'
    end

    it "Verificar la letra A en la palabra" do
        ahorcado = Ahorcado.new "Agua"
        result = ahorcado.verificarLetra "A"
        expect(result).to eq 'Letra contenida en la palabra'
    end

    it "No puedo fijar palabras vacias" do
        ahorcado = Ahorcado.new ""
        expect(ahorcado.obtenerPalabra).to eq 'Napoleon'
    end

    it "puedo enmascarar mi palabra secreta por espacios y guiones" do
        ahorcado = Ahorcado.new "Agua"
        expect(ahorcado.enmascararPalabra).to eq '_ _ _ _ '
    end
    # it "la palabra regresada existe dentro del conjunto de palabras" do
    #     ahorcado = Ahorcado.new ""

    #     expect(ahorcado.obtenerPalabra).to eq 'Napoleon'
    # end
end