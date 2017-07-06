class DockingStation
  attr_reader 'bikes'
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes =[]
  end
  def release_bike
    raise "Go away. No bike for you." if empty?
    @bikes.pop
  end
  def dock(bike)
    raise "No room for your bike. Go away." if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY ? true : false
  end
  def empty?
    @bikes.empty? ? true : false
  end
end
