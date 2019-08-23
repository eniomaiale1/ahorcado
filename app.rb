require 'sinatra'
require './config'

get '/' do
    erb :index
end

post '/juego' do
    "Simple Hang v2.0 iniciado"
end