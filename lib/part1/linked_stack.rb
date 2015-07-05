class LinkedStack
  class Node
    attr_accessor :item, :next
  end

  def push(item)
    old_first = @first
    self.first = Node.new
    first.item = item
    first.next = old_first
  end

  def pop
    return nil if empty?

    item = first.item
    self.first = first.next

    item
  end

  def empty?
    first.nil?
  end

  private

  attr_accessor :first
end

