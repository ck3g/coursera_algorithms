require 'part1/linked_queue'

RSpec.describe LinkedQueue do
  it "allows to enqueue and dequeue items in proper order" do
    queue = LinkedQueue.new
    queue.enqueue "item1"
    queue.enqueue "item2"
    expect(queue).not_to be_empty

    item1 = queue.dequeue
    item2 = queue.dequeue
    nil_item = queue.dequeue

    expect(item1).to eq 'item1'
    expect(item2).to eq 'item2'
    expect(nil_item).to be_nil
    expect(queue).to be_empty
  end
end

