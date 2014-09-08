require_relative 'spec_helper'

class FisherYatesPeformance < MiniTest::Benchmark
  def bench_fisher_yates_performance
    assert_performance_linear(0.99) do |n|
      sleep 0.000001*n
      #p "n is #{n}"
    end
  end
end
