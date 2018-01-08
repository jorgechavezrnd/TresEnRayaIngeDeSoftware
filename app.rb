require 'sinatra'
set :bind, '0.0.0.0'
set :port, 3000
require './lib/player'

get '/' do
  erb :index
end

get '/players' do
  erb :players
end

get '/whoStarts' do
  $PLAYER1 = Player.new(params[:jugador1])
  $PLAYER2 = Player.new(params[:jugador2])
  @player1 = $PLAYER1.getName
  @player2 = $PLAYER2.getName
  
  erb :whoStarts
end