require './lib/player'

describe Player do
  before(:each) do
    @player = Player.new("Pepe")
    @player2 = Player.new("Carlos")
  end
  
  it "deberia devolver el nombre del jugador" do
    expect(@player.getName).to eq("Pepe")
  end
  
  it "deberia devolver el nombre del jugador 2" do
    expect(@player2.getName).to eq("Carlos")
  end
end