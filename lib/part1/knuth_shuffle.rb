class KnuthShuffle
  def self.shuffle(arr)
    n = arr.length
    i = 0
    while i < n
      r = rand(i + 1)
      tmp = arr[i]
      arr[i] = arr[r]
      arr[r] = tmp

      i += 1
    end

    arr
  end
end
