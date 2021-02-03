require './lib/bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike.nil?
      fail "No bikes available"
    else
      @bike
    end
  end

  def dock(bike) 
    if @bike.nil?
      @bike = bike
    else
      fail "Docking station full" 
    end
  end
end
