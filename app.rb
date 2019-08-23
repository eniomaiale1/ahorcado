require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    session['ahorcado'] = nil
    session['mensaje'] = ""
    erb :index
end

post '/juego' do
    session['ahorcado'] = Ahorcado.new
    session['secreto'] = session['ahorcado'].obtenerPalabra
    session['enmascarada'] = session['ahorcado'].enmascararPalabra
    erb :juego
end

get '/configurar/:palabra' do |palabra|
    session['secreto'] = palabra
    erb :juego
end

post '/verificar' do
    session['enmascarada'] = "A _ _ a"
    session['mensaje'] = "Letra contenida en la palabra"
    erb :juego
end