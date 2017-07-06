class DockingStation
  attr_reader :bike
  def release_bike
    raise "Go away. No bike for you." unless @bike
    @bike

  end

  def dock(bike)
    raise "No room for your bike. Go away." if @bike
    @bike = bike
  end
end
