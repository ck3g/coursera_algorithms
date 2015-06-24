class WeightedQuickUnionUF
  attr_accessor :ids, :sizes

  def initialize(count)
    @ids = (0...count).to_a
    @sizes = Array.new count, 1
  end

  def connected?(p, q)
    root(p) == root(q)
  end

  def union(p, q)
    i = root(p)
    j = root(q)

    return if i == j
    if sizes[i] < sizes[j]
      ids[i] = j
      sizes[j] += sizes[i]
    else
      ids[j] = i
      sizes[i] += sizes[j]
    end
  end

  private

  def root(item)
    item = ids[item] while item != ids[item]
    item
  end
end
