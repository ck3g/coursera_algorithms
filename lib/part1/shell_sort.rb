class ShellSort
  def self.sort(arr)
    n = arr.length
    h = 1
    while  h < n / 3
      h = 3 * h + 1
    end

    while h >= 1
      i = h
      while i < n
        j = i
        while j >= h && arr[j] < arr[j - h]
          tmp = arr[j]
          arr[j] = arr[j - h]
          arr[j - h] = tmp

          j -= h
        end

        i += 1
      end

      h = h / 3
    end

    arr
  end
end
