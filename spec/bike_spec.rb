require 'Bike'

describe Bike do
  it "It responds to the working? method" do
    expect(subject).to respond_to(:working?)
  end

end
