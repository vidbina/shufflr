module Shufflr
  module Helper

    # Exchanges two values the specified indexes within an array
    def self.exchange(arr=[], a, b)
      return arr unless arr.count > a && arr.count > b
      arr[a], arr[b] = arr[b], arr[a]
      arr
    end
  end 
end
