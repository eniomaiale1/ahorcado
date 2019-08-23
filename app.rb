require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    erb :index
end

post '/juego' do
    session['ahorcado'] = Ahorcado.new
    session['secreto'] = session['ahorcado'].obtenerPalabra
    erb :juego
end

get '/configurar/:palabra' do |palabra|
    session['secreto'] = palabra
    erb :juego
end

post '/verificar' do
    session['mensaje'] = "Letra contenida en la palabra"
    erb :juego
end