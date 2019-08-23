require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    erb :index
end

post '/juego' do
    ahorcado = Ahorcado.new
    session['secreto'] = ahorcado.obtenerPalabra
    erb :juego
end

get '/configurar/:palabra' do |palabra|
    session['secreto'] = palabra
    erb :juego
end

post '/verificar' do
    session['letra'] = "Letra contenida en la palabra"
    erb :juego
end