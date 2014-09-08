require_relative 'spec_helper'

describe Shufflr::Helper do
  it 'swaps two array items' do
    assert_equal Shufflr::Helper.exchange([1, 2, 3], 0, 1), [2, 1, 3]
    assert_equal Shufflr::Helper.exchange([1, 2, 3], 1, 2), [1, 3, 2]
    assert_equal Shufflr::Helper.exchange([1, 2, 3], 0, 2), [3, 2, 1]
    assert_equal Shufflr::Helper.exchange([1, 2, 3], 2, 2), [1, 2, 3]
  end

  it 'returns the unmodified array when exchanging between invalid indexes' do
    assert_equal Shufflr::Helper.exchange([1, 2, 3], 1, 3), [1, 2, 3]
    assert_equal Shufflr::Helper.exchange([1, 2, 3], 4, 3), [1, 2, 3]
  end
end
