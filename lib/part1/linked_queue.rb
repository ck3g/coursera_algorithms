class LinkedQueue
  class Node
    attr_accessor :next, :item
  end

  def enqueue(item)
    old_last = last
    self.last = Node.new
    last.item = item
    last.next = nil

    if empty?
      self.first = last
    else
      old_last.next = last
    end
  end

  def empty?
    first.nil?
  end

  def dequeue
    if empty?
      self.last = nil
    else
      item = first.item
      self.first = first.next
      item
    end
  end

  private

  attr_accessor :first, :last
end
