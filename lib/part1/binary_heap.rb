class BinaryHeap
  def initialize(heap)
    @heap = heap
    @n = heap.length - 1
  end

  def swim!(k)
    while k > 1 && heap[k / 2] < heap[k]
      tmp = heap[k]
      heap[k] = heap[k / 2]
      heap[k / 2] = tmp
      k = k / 2
    end
  end

  def insert!(key)
    heap << key
    swim! heap.length - 1
  end

  def sink!(k)
    while 2 * k < n
      j = 2 * k
      if j < n && heap[j] < heap[j + 1]
        j += 1
      end
      break if heap[k] >= heap[j]

      tmp = heap[k]
      heap[k] = heap[j]
      heap[j] = tmp

      k = j
    end
  end

  def delete_max!
    max = heap[1]

    tmp = heap[1]
    heap[1] = heap[n]
    heap[n] = tmp
    self.n -= 1

    sink! 1
    heap[n + 1] = nil

    max
  end

  private

  attr_reader :heap
  attr_accessor :n
end
