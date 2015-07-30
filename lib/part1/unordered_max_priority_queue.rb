class UnorderedMaxPriorityQueue
  def initialize
    @count = 0
    @items = []
  end

  def empty?
    count.zero?
  end

  def insert(item)
    items << item
    self.count += 1
  end

  def del_max
    max = 0
    (1...count).each do |i|
      max = i if items[max] < items[i]
    end

    tmp = items[max]
    items[max] = items[count - 1]
    items[count - 1] = tmp

    self.count -= 1

    items[count]
  end

  private

  attr_accessor :count, :items
end
