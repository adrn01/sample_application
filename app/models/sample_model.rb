# frozen_string_literal: true

# SampleModel class to demonstrate profiling
class SampleModel
  def self.process(number_of_iterations: 0)
    number_of_iterations.times do |_iteration|
      sleep 1
    end

    true
  end
end
