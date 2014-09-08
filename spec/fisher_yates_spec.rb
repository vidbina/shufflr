require_relative 'spec_helper'

describe Shufflr::FisherYates do
  before do
    @unshuffled_set = [1, 2, 3, 4]
  end

  describe 'executed loop-wise' do
    before do
      @shuffled_set = Shufflr::FisherYates.shuffle_loopwise(@unshuffled_set)
    end

    it 'contains every value in the original set' do
      @shuffled_set.each { |item| assert_includes @shuffled_set, item }
    end
  end

  describe 'executed recursively' do
    before do
      @shuffled_set = Shufflr::FisherYates.shuffle_recursively(@unshuffled_set)
    end

    it 'contains every value in the original set' do
      @shuffled_set.each { |item| assert_includes @shuffled_set, item }
    end
  end

  describe 'executed in enumerable' do
    before do
      @shuffled_set = Shufflr::FisherYates.shuffle_using_enumerable(@unshuffled_set)
    end

    it 'contains every value in the original set' do
      @shuffled_set.each { |item| assert_includes @shuffled_set, item }
    end
  end

  it 'swaps two array items' do
    assert_equal Shufflr::FisherYates.exchange([1, 2, 3], 0, 1), [2, 1, 3]
    assert_equal Shufflr::FisherYates.exchange([1, 2, 3], 1, 2), [1, 3, 2]
    assert_equal Shufflr::FisherYates.exchange([1, 2, 3], 0, 2), [3, 2, 1]
    assert_equal Shufflr::FisherYates.exchange([1, 2, 3], 2, 2), [1, 2, 3]
  end

  it 'returns the unmodified array when exchanging between invalid indexes' do
    assert_equal Shufflr::FisherYates.exchange([1, 2, 3], 1, 3), [1, 2, 3]
    assert_equal Shufflr::FisherYates.exchange([1, 2, 3], 4, 3), [1, 2, 3]
  end

  it 'accepts an enumerator as argument' do
    skip
    count = 10
    enumerator = Enumerator.new do |item|
      (1..count).each do |index|
        item << Object.new
      end
    end

    assert_equal Shufflr::FisherYates.shuffle(enumerator).count, count
  end
end
