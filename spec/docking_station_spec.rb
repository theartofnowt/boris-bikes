require 'docking_station'

describe DockingStation do
  let(:bike)  { double :bike }

  it "respond to release bike" do
     expect(subject).to respond_to(:release_bike)
  end

  it "gets a bike and its working?" do
    subject.dock( double(:bike, working?: true))
    released_bike = subject.release_bike
    expect(released_bike).to be_working
  end

  it "Docks stores an instance of a bike object when one is passed to it" do
    bike_to_dock = double(:bike, working?: true)
    subject.dock(bike_to_dock)
    expect(subject.release_bike).to eq bike_to_dock
  end

  it "shows if a bike is docked at the station" do
    bike_to_dock = double(:bike, working?: true)
    subject.dock(bike_to_dock)
    expect(subject.bikes).to include bike_to_dock
  end

  it "show if there are no more bikes in docking station means no more bikes" do
    expect{subject.release_bike}.to raise_error "Go away. No bike for you."
  end

  it "should not accep more bikes if no capacity" do
    expect { (subject.capacity + 1).times {subject.dock(double(:bike, working?: true))} }.to raise_error "No room for your bike. Go away."
  end

  it "should enable station with custom capacity" do
    station = DockingStation.new(35)
    capacity = station.capacity
    expect(capacity).to eq 35
    expect { (capacity + 1).times {station.dock(double(:bike, working?: true))} }.to raise_error "No room for your bike. Go away."
  end

  it "should not release broken bike, so no angry customers complain!" do
    subject.dock(double(:bike, working?: true))
    subject.dock(double(:bike, working?: false))
    expect(subject.release_bike.working?).to be true
  end
end

# things to research!
# described_class
# subject
# why does it short syntax work without declaring a subject?
# research implict and explicit subject
