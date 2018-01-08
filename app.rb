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

get '/game' do
  if params[:primerJugador] == $PLAYER1.getName
    $TURN = 1
    @player = $PLAYER1.getName
  else
    $TURN = 2
    @player = $PLAYER2.getName
  end
  
  erb :game
end