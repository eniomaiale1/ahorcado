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
    it "No puedo fijar palabras vacias" do
        ahorcado = Ahorcado.new ""
        expect(ahorcado.obtenerPalabra).to eq 'Napoleon'
    end
    # it "la palabra regresada existe dentro del conjunto de palabras" do
    #     ahorcado = Ahorcado.new ""

    #     expect(ahorcado.obtenerPalabra).to eq 'Napoleon'
    # end
end