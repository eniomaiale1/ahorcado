require 'sinatra'
require './config'

get '/' do
    erb :index
end

post '/juego' do
    erb :juego
end