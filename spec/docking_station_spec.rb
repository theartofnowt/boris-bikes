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


end

# things to research!
# described_class
# subject
# why does it short syntax work without declaring a subject?
# research implict and explicit subject
