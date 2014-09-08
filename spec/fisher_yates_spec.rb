require_relative 'spec_helper'

describe Shufflr::FisherYates do
  before do
    @unshuffled_set = [1, 2, 3, 4]
  end

  it 'calls one of the shufflers upon #shuffle'

  # TODO: Figure out the MiniTest equivalent of RSpec's shared examples to
  # DRY this up
  describe 'executed loop-wise' do
    before do
      @shuffled_set = Shufflr::FisherYates.shuffle(@unshuffled_set)
    end

    it 'contains every value in the original set' do
      @shuffled_set.each { |item| assert_includes @shuffled_set, item }
    end
  end
  
  describe 'executed loop-wise' do
    before do
      @shuffled_set = Shufflr::FisherYates.shuffle_loopwise(@unshuffled_set)
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
