class InsertionSort
  def self.sort(arr)
    n = arr.length
    i = 0
    while i < n
      j = i
      while j > 0
        if arr[j] < arr[j - 1]
          tmp = arr[j - 1]
          arr[j - 1] = arr[j]
          arr[j] = tmp
        end

        j -= 1
      end

      i += 1
    end

    arr
  end
end
