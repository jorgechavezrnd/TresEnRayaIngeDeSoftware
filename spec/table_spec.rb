require './lib/table'

describe Table do
  before(:each) do
    @table = Table.new
  end
  
  it "deberia devolver 0" do
    expect(@table.getBox(0)).to eq(0)
  end
  
  it "deberia devolver 1" do
    @table.setBox(3, 1)
    expect(@table.getBox(3)).to eq(1)
  end
  
  it "deberia devolver 2" do
    @table.setBox(5, 2)
    expect(@table.getBox(5)).to eq(2)
  end
  
  it "deberia devolver 1" do
    @table.setBox(3, 1)
    @table.setBox(3, 2)
    expect(@table.getBox(3)).to eq(1)
  end
end