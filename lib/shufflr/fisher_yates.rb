module Shufflr
  module FisherYates
    # Performs the Fisher-Yates shuffle
    def self.shuffle(arr=[], shuffle_from=0)
      shuffle_loopwise(arr, shuffle_from)
    end

    # Performs the shuffle in an imperative style using the almighty looping
    # mechanism
    def self.shuffle_loopwise(arr=[], shuffle_from=0)
      for i in shuffle_from..(arr.count-1)
        j = (i..arr.count-1).to_a.sample
        exchange(arr, i, j)
      end
      arr
    end

    def self.shuffle_using_enumerable(arr=[], shuffle_from=0)
      #(0..arr.count-1).inject(arr) do |memo, i|
        #p memo
      #end
    end

    # Exchanges two values the specified indexes within an array
    def self.exchange(arr=[], a, b)
      return arr unless arr.count > a && arr.count > b
      arr[a], arr[b] = arr[b], arr[a]
      arr
    end

    # Performs the shuffle in an functional style using recursion
    def self.shuffle_recursively(arr=[], i=0)
      # NOTE: this will blow the stack when reaching its process memory 
      # limitation but is a simple demonstration of the recursive approach
      return arr if i+1 == arr.count
      j = (i..arr.count-1).to_a.sample
      shuffle_recursively(exchange(arr, i, j), i+1)
    end
  end 
end
