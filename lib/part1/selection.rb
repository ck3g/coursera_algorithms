require 'part1/quick_sort'

class Selection
  def self.select(arr, k)
    arr.shuffle!
    lo = 0
    hi = arr.length - 1

    while hi > lo
      j = QuickSort.partition arr, lo, hi
      if j < k
        lo = j + 1
      elsif j > k
        hi = j - 1
      else
        return arr[k]
      end
    end

    arr[k]
  end
end
