class DockingStation
  attr_reader :bike
  def release_bike
    raise "Go away. No bike for you." unless @bike
    @bike

  end

  def dock(bike)
    @bike = bike
  end
end
