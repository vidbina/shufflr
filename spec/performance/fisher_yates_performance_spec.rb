require_relative '../spec_helper'

class FisherYatesPeformance < MiniTest::Benchmark
  def test_collection(length=0)
    enumerator = Enumerator.new do |item|
      length.times do
        item << rand
      end
    end

    enumerator.take(length)
  end

  def bench_fisher_yates_loop_performance
    assert_performance_linear(0.99) do |n|
      Shufflr::FisherYates.shuffle_loopwise(test_collection(length=n))
    end
  end

  def bench_fisher_yates_enumerable_peformance
    assert_performance_linear(0.99) do |n|
      Shufflr::FisherYates.shuffle_using_enumerable(test_collection(length=n))
    end
  end
end
