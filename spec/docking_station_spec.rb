require 'docking_station'

describe DockingStation do
   it "respond to release bike" do
     expect(subject).to respond_to(:release_bike)

  end

  it "gets a bike and its working?" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_a Bike
    expect(bike).to be_working
  end

  it "Docks stores an instance of a bike object when one is passed to it" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it "shows if a bike is docked at the station" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include bike
  end

  it "show if there are no more bikes in docking station means no more bikes" do
    expect{subject.release_bike}.to raise_error "Go away. No bike for you."
  end

  it "should not accep more bikes if no capacity" do
    expect { (subject.capacity + 1).times {subject.dock(Bike.new)} }.to raise_error "No room for your bike. Go away."
  end

  it "should enable station with custom capacity" do
    station = DockingStation.new(35)
    capacity = station.capacity
    expect(capacity).to eq 35
    expect { (capacity + 1).times {station.dock(Bike.new)} }.to raise_error "No room for your bike. Go away."
  end
end

# things to research!
# described_class
# subject
# why does it short syntax work without declaring a subject?
# research implict and explicit subject
