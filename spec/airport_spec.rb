# frozen_string_literal: true

require 'airport'

describe Airport do
  airport = Airport.new

  it 'should land plane at airport' do
    expect(airport).to respond_to(:land).with(1).argument
  end
  it 'plane should takeoff' do
    expect(airport).to respond_to(:take_off).with(1).argument
  end
end
