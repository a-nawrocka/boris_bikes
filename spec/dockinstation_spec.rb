require "dockingstation"
require "bike"
describe DockingStation do

  subject = DockingStation.new

  it "responds to release a bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "gets a bike" do
    expect(subject.release_bike).to respond_to(:working?)
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
  
  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end 

  it "returns a docked bike" do 
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end 
end
