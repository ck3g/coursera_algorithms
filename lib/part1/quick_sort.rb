class QuickSort
  def self.partition(arr, lo, hi)
    i = lo
    j = hi + 1
    while true
      i += 1
      while arr[i] < arr[lo]
        i += 1
        break if i == hi
      end

      j -= 1
      while arr[lo] < arr[j]
        j -= 1
        break if j == lo
      end

      break if i >= j

      tmp = arr[i]
      arr[i] = arr[j]
      arr[j] = tmp
    end

    tmp = arr[lo]
    arr[lo] = arr[j]
    arr[j] = tmp

    j
  end

  def self.sort(arr)
    arr.shuffle!
    sort_shuffled arr, 0, arr.length - 1
  end

  def self.sort_shuffled(arr, lo, hi)
    return arr if hi <= lo

    j = partition arr, lo, hi
    arr = sort_shuffled arr, lo, j - 1
    arr = sort_shuffled arr, j + 1, hi

    arr
  end
end
