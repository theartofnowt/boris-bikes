class DockingStation
  attr_reader 'bikes', 'capacity'
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end
  def release_bike
    raise "Go away. No bike for you." if empty?
    @bikes.pop
  end
  def dock(bike)
    raise "No room for your bike. Go away." if full?
    if bike.working? then @bikes << bike else @broken_bikes << bike end
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY ? true : false
  end
  def empty?
    @bikes.empty? ? true : false
  end
end
