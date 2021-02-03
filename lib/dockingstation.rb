require './lib/bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      fail "No bikes available"
    else
      @bikes.pop
    end
  end

  def dock(bike) 
    if @bikes.length < 20
      @bikes << bike
    else
      fail "Docking station full" 
    end
  end
end
