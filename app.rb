require 'sinatra'
set :bind, '0.0.0.0'
set :port, 3000
require './lib/player'
require './lib/table'

$TABLE = Table.new
$TURN = 0

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
  if $TURN == 0
    if params[:primerJugador] == $PLAYER1.getName
      $TURN = 1
      @player = $PLAYER1.getName
    else
      $TURN = 2
      @player = $PLAYER2.getName
    end
  else
    if $TURN == 1
      @player = $PLAYER1.getName
    else
      @player = $PLAYER2.getName
    end
  end
  
  @table = $TABLE
  erb :game
end

get '/box0' do
  if $TURN == 1
    $TABLE.setBox(0,1)
    $TURN = 2
  else
    $TABLE.setBox(0,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box1' do
  if $TURN == 1
    $TABLE.setBox(1,1)
    $TURN = 2
  else
    $TABLE.setBox(1,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box2' do
  if $TURN == 1
    $TABLE.setBox(2,1)
    $TURN = 2
  else
    $TABLE.setBox(2,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box3' do
  if $TURN == 1
    $TABLE.setBox(3,1)
    $TURN = 2
  else
    $TABLE.setBox(3,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box4' do
  if $TURN == 1
    $TABLE.setBox(4,1)
    $TURN = 2
  else
    $TABLE.setBox(4,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box5' do
  if $TURN == 1
    $TABLE.setBox(5,1)
    $TURN = 2
  else
    $TABLE.setBox(5,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box6' do
  if $TURN == 1
    $TABLE.setBox(6,1)
    $TURN = 2
  else
    $TABLE.setBox(6,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box7' do
  if $TURN == 1
    $TABLE.setBox(7,1)
    $TURN = 2
  else
    $TABLE.setBox(7,2)
    $TURN = 1
  end
  redirect '/game'
end

get '/box8' do
  if $TURN == 1
    $TABLE.setBox(8,1)
    $TURN = 2
  else
    $TABLE.setBox(8,2)
    $TURN = 1
  end
  redirect '/game'
end