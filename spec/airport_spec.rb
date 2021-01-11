# frozen_string_literal: true

require 'airport'

describe Airport do
  airport = Airport.new(20)
  let(:plane) { double :plane }

  describe '#land' do
    it 'should land plane at airport' do
      expect(airport).to respond_to(:land).with(1).argument
    end

    context 'when at capacity' do
    it 'does not allow plane to land' do
      # This is called a double and used to display a class at certain times
      20.times do
        airport.land(plane)
      end
      expect { airport.land(plane) }.to raise_error 'Cannot land as airport is full'
    end
  end
end
  describe '#take_off' do
    it 'plane should takeoff' do
      expect(airport).to respond_to(:take_off).with(1).argument
    end
  end
end
