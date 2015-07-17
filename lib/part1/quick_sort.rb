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

  def self.dijskra_3way_sort(arr, lo, hi)
    return arr if hi < lo

    lt = lo
    gt = hi
    v = arr[lo] # comparable
    i = lo

    while i <= gt
      cmp = arr[i] <=> v
      if cmp < 0
        tmp = arr[lt]
        arr[lt] = arr[i]
        arr[i] = tmp
        lt += 1
        i += 1
      elsif cmp > 0
        tmp = arr[i]
        arr[i] = arr[gt]
        arr[gt] = tmp
        gt -= 1
      else
        i += 1
      end
    end

    arr = dijskra_3way_sort arr, lo, lt - 1
    arr = dijskra_3way_sort arr, gt + 1, hi

    arr
  end
end
