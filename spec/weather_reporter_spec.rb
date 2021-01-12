# frozen_string_literal: true

require 'weather_reporter'

describe Weather_reporter do
subject(:weather_reporter)  { described_class.new }

describe '#stormy?' do
    it 'can be non-stormy' do
        allow(Kernel).to receive(:rand).and_return 1
        expect(weather_reporter.stormy?).to be false
    end
    it 'can be stormy' do
        allow(Kernel).to receive(:rand).and_return 6
        expect(weather_reporter.stormy?).to be true
    end
    end
end
