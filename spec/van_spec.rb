require 'van'

describe Van do
  let(:bike)  { double :bike }

  it "creates vans of custom capacity" do
    van = Van.new(5)
    expect(van.capacity).to eq 5
  end
  it "accept broken bikes and release them" do
    bike = double(:bike, working?: false)
    subject.dock(bike)
    expect(subject.release_broken).to eq bike
  end

end
