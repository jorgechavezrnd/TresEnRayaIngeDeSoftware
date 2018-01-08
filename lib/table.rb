class Table
  def initialize
    @boxes = [0, 0, 0, 0, 0, 0, 0, 0, 0]
  end
  
  def getBox(pos)
    return @boxes[pos]
  end
  
  def setBox(pos, player)
    if @boxes[pos] == 0
      @boxes[pos] = player
    end
  end
end