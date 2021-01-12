# frozen_string_literal: true

class Weather_reporter
    def stormy?
        Kernel.rand(1..6)>4
    end
end
