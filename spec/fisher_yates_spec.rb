require_relative 'spec_helper'
require 'minitest/autorun'
require 'minitest/benchmark'

describe Shufflr::FisherYates do
  before do
    @unshuffled_set = [1, 2, 3, 4]
    @shuffled_set = Shufflr::FisherYates.shuffle(@unshuffled_set)
  end

  it 'contains every value in the original set' do
    @unshuffled_set.each do |item|
      assert_includes @shuffled_set, item
    end
  end

  it 'accepts an enumerator as argument' do
    count = 10
    enumerator = Enumerator.new do |item|
      (1..count).each do |index|
        item << Object.new
      end
    end

    assert_equal Shufflr::FisherYates.shuffle(enumerator).count, count
  end
end
