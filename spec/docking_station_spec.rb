require 'docking_station'

describe DockingStation do
  # it "respond to release bike" do
  #   docking_station = DockingStation.new
  #   expect(docking_station).to respond_to(:release_bike)
  # end

  it { binding.pry; is_expected.to respond_to(:release_bike) }
end

# things to research!
# described_class
# subject
# why does it short syntax work without declaring a subject?
# research implict and explicit subject
