class QuickUnionUF
  attr_accessor :ids

  def initialize(count)
    @ids = (0...count).to_a
  end

  def connected?(p, q)
    root(p) == root(q)
  end

  def union(p, q)
    ids[root(p)] = root(q)
  end

  private

  def root(item)
    item = ids[item] while item != ids[item]
    item
  end
end
