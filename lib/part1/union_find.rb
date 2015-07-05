class QuickFindUF
  attr_accessor :ids

  def initialize(count = 1)
    @ids = (0...count).to_a
  end

  def connected?(p, q)
    ids[p] == ids[q]
  end

  def union(p, q)
    pid, qid = ids[p], ids[q]

    ids.each { |i| ids[i] = qid if ids[i] == pid }
  end
end

