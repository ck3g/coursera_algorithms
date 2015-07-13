class MergeSort
  def self.merge(arr, lo, mid, hi)
    aux = arr.dup
    i = lo
    j = mid + 1
    k = lo
    while k <= hi
      if i > mid
        arr[k] = aux[j]
        j += 1
      elsif j > hi
        arr[k] = aux[i]
        i += 1
      elsif aux[j] < aux[i]
        arr[k] = aux[j]
        j += 1
      else
        arr[k] = aux[i]
        i += 1
      end

      k += 1
    end

    arr
  end

  def self.sort(arr, lo, hi)
    return arr if hi <= lo

    aux = arr.dup
    mid = lo + (hi - lo) / 2
    sort(arr, lo, mid)
    sort(arr, mid + 1, hi)
    merge(arr, lo, mid, hi)

    arr
  end
end
