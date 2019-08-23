require 'sinatra'
require './config'

get '/' do
    erb :index
end

post '/juego' do
    erb :juego
end

get '/configurar/:palabra' do |palabra|
    session['secreto'] = palabra
    erb :juego
end

post '/verificar' do
    "Letra contenida en la palabra"
end