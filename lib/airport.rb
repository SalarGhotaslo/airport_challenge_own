# frozen_string_literal: true

# Creating a class airport
class Airport
  def initialize(capacity)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    raise 'Cannot land as airport is full' if full?

    @planes << plane
  end

  def take_off(plane); end
end

private

def full?
  @planes.length >= @capacity
end
