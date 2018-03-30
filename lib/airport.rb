require 'weather'

class Airport
  FULL = 2
  attr_reader :hangar
  def initialize(capacity = FULL)
    @capacity = capacity 
    @hangar = []
  end

  def land(plane, weather)
    fail 'Airport is full' if @hangar.length >= @capacity
    weather.forecast == :sunny ? @hangar.push(plane) : nil
  end

  def takeoff(plane, weather)
    weather.forecast == :sunny ? @hangar.delete(plane) : nil
  end
end
