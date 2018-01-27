require_relative "weather"

class Airport
  attr_reader :hangar, :weather
  def initialize
    @hangar = []
    @weather = Weather.new
  end

  def land(plane)
    @hangar << plane
  end

  def take_off(plane)
    raise "The weather is too bad!" if stormy?
    @hangar.delete(plane)
    "#{plane} has taken off"
  end

  private
  def stormy?
    @weather.stormy
  end
end
