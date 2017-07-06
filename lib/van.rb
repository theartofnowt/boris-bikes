class Van < DockingStation
  def release_broken
    @broken_bikes.pop
  end
  def empty?
    @broken_bikes.empty?
  end
end
