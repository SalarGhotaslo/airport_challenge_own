# frozen_string_literal: true

require 'airport'

describe Airport do
  airport = Airport.new(20)

  it 'should land plane at airport' do
    expect(airport).to respond_to(:land).with(1).argument
  end
  it 'plane should takeoff' do
    expect(airport).to respond_to(:take_off).with(1).argument
  end

  it 'does not allow plane to land when airport is full' do
    plane = double :plane
    20.times do
      airport.land(plane)
    end
    expect { airport.land(plane) }.to raise_error 'Cannot land as airport is full'
end
end
