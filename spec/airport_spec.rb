# frozen_string_literal: true

require 'airport'

describe Airport do
  airport = Airport.new(20, weather_reporter)
  let(:plane) { double :plane }
  # This is called a double and used to display a class at certain times
  let(:weather_reporter) { Weather_reporter.new }
  describe '#land' do
    context 'when not stormy' do
      before do
        allow(airport).to receive(:stormy?).and_return false
      end
      it 'should land plane at airport' do
        expect(airport).to respond_to(:land).with(1).argument
      end
      context 'when at capacity' do
        it 'does not allow plane to land' do
          20.times do
            airport.land(plane)
          end
          expect { airport.land(plane) }.to raise_error 'Cannot land as airport is full'
        end
      end
    end
    it 'raises an error if asked to land when stormy' do
      allow(airport).to receive(:stormy?).and_return true
      expect { airport.land(plane) }.to raise_error 'Cannot land plane: weather is stormy'
    end
  end

  describe '#take_off' do
    it 'plane should takeoff' do
      allow(airport).to receive(:stormy?).and_return false
      expect(airport).to respond_to(:take_off).with(1).argument
    end
    it 'cannot takeoff when stormy' do
      allow(airport).to receive(:stormy?).and_return true
      expect { airport.take_off(plane) }.to raise_error 'Cannot takeoff: weather is stormy'
    end
  end
end
