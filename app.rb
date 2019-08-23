require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    erb :index
end

post '/juego' do
    ahorcado = Ahorcado.new
    session['secreto'] = ahorcado.obtenerPalabra
    session['enmascarada'] = "_ _ _ _"
    erb :juego
end

get '/configurar/:palabra' do |palabra|
    session['secreto'] = palabra
    erb :juego
end

post '/verificar' do
    "Letra contenida en la palabra"
end