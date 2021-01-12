require_relative 'weather_reporter'

# frozen_string_literal: true

# Creating a class airport
class Airport
  def initialize(capacity)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    raise 'Cannot land as airport is full' if full?
    raise 'Cannot land plane: weather is stormy' if stormy?

    @planes << plane
  end

  def take_off(_plane)
    raise 'Cannot takeoff: weather is stormy' if stormy?
  end
end

private

def full?
  @planes.length >= @capacity
end

def stormy?
  Weather_reporter.stormy?
end
