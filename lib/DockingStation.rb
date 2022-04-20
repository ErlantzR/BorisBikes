class DockingStation

  def release_bike
    @bike == nil ? fail : @bike
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

end

class Bike
  def working?
    return true
  end
end
