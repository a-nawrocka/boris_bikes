require './lib/bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
      fail "No bikes available"
    else
      @bikes.pop
    end
  end

  def dock(bike) 
    if full?
      fail "Docking station full" 
    else
      @bikes << bike
    end
  end

 private 

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end  

  def empty?
    @bikes.empty?
  end
end