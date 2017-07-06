class DockingStation
  attr_reader 'bikes'

  def initialize
    @bikes =[]
    @capacity = 20
  end

  def release_bike
    raise "Go away. No bike for you." if @bikes.empty?
    @bikes.pop

  end

  def dock(bike)
    raise "No room for your bike. Go away." if @bikes.length == @capacity
    @bikes << bike
  end
end
