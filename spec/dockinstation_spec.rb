require "dockingstation"
require "bike"
describe DockingStation do



  it "responds to release a bike" do
    subject = DockingStation.new
    expect(subject).to respond_to(:release_bike)
  end

  describe "#release_bike" do 
    it "releases a bike" do
      bike = Bike.new
      subject = DockingStation.new
      subject.dock(bike) 
      expect(subject.release_bike).to eq bike 
    end

    it "raises an error when there are no bikes available" do
      subject = DockingStation.new
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
  
  describe "#dock" do 
    it "docks a bike" do
      bike = Bike.new
      subject = DockingStation.new
      expect(subject.dock(bike)).to eq bike
    end 

    it "returns a docked bike" do 
      bike = Bike.new
      subject = DockingStation.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end 

    it "raises an error when a bike is already docked" do
      bike = Bike.new
      subject = DockingStation.new
      subject.dock(bike)
      expect { subject.dock(bike) }.to raise_error "Docking station full"
    end
  end
end
