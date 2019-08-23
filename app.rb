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
    session['ahorcado'] = Ahorcado.new palabra
    session['secreto'] = session['ahorcado'].obtenerPalabra
    erb :juego
end

post '/verificar' do
    session['mensaje'] = session['ahorcado'].verificarLetra params['letra']
    session['enmascarada'] = session['ahorcado'].actualizaMascara params['letra']
    erb :juego
end