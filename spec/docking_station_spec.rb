require 'docking_station'

describe DockingStation do
   it "respond to release bike" do
     docking_station = DockingStation.new #
     expect(docking_station).to respond_to(:release_bike)

  end

  it "gets a bike and its working?" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(docking_station.release_bike).to be_a Bike
    expect(bike.working?).to eq true
  end

  it "Docks stores an instance of a bike object when one is passed to it" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end

  it "shows if a bike is docked at the station" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to be_a Bike
  end


end

# things to research!
# described_class
# subject
# why does it short syntax work without declaring a subject?
# research implict and explicit subject
