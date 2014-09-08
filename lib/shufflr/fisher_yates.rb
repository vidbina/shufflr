module Shufflr
  module FisherYates

    # Performs the Fisher-Yates shuffle
    def self.shuffle(arr=[], shuffle_from=0)
      self.send(:shuffle_using_enumerable, arr, shuffle_from)
      #shuffle_(arr, shuffle_from)
    end

    # Performs the shuffle in an imperative style using the almighty looping
    # mechanism
    def self.shuffle_loopwise(arr=[], shuffle_from=0)
      for i in shuffle_from..(arr.count-1)
        j = (i..arr.count-1).to_a.sample
        Helper.exchange(arr, i, j)
      end
      arr
    end

    # Performs the shuffle using an +Enumerable+
    def self.shuffle_using_enumerable(arr=[], shuffle_from=0)
      (0..arr.count-2).inject(arr) do |memo, i|
        Helper.exchange(memo, i, (i..memo.count-1).to_a.sample)
      end
    end
  end 
end
