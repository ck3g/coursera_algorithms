def binary_search(array, key)
  low = 0
  high = array.length - 1

  while low <= high do
    middle = low + (high - low) / 2
    if key < array[middle]
      high = middle - 1
    elsif key > array[middle]
      low = middle + 1
    else
      return middle
    end
  end

  -1
end
