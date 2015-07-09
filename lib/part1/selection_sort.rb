class SelectionSort
  def self.sort(arr)
    n = arr.length
    i = 0

    while i < n
      min = i
      j = i + 1

      while j < n
        if arr[j] < arr[min]
          swap = arr[j]
          arr[j] = arr[min]
          arr[min] = swap

          min = j
        end

        j += 1
      end

      i += 1
    end

    arr
  end
end
