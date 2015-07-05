require 'part1/linked_stack'

RSpec.describe LinkedStack do
  it "allows to push and pop items in proper order" do
    stack = LinkedStack.new
    stack.push "item1"
    stack.push "item2"
    expect(stack).not_to be_empty

    item2 = stack.pop
    item1 = stack.pop
    nil_item = stack.pop

    expect(item2).to eq 'item2'
    expect(item1).to eq 'item1'
    expect(nil_item).to be_nil
    expect(stack).to be_empty
  end
end
