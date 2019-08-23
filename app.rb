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
    session['enmascarada'] = "_ _ _ _"
    erb :juego
end

get '/configurar/:palabra' do |palabra|
    session['secreto'] = palabra
    erb :juego
end

post '/verificar' do
    session['mensaje'] = session['ahorcado'].verificarLetra session['letra']
    erb :juego
end