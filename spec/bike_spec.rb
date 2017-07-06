require 'Bike'

describe Bike do
  it "It responds to the working? method" do
    expect(subject).to respond_to(:working?)
  end

  it "it can be reported as broken" do
    expect(subject.working?).to be true
    subject.report_broken
    expect(subject.working?).to be false
  end


end
