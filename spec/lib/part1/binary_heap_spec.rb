require 'part1/binary_heap'

RSpec.describe BinaryHeap do
  describe '#swim' do
    it "moving element upwards to his position" do
      heap = %w(s p r n t o a e i h g).unshift(nil)
      expect {
        BinaryHeap.new(heap).swim!(5)
      }.to change { heap }.to %w(t s r n p o a e i h g).unshift(nil)
    end
  end

  describe '#insert' do
    it "puts element into the proper position" do
      heap = %w(t p r n h o a e i g).unshift(nil)
      expect {
        BinaryHeap.new(heap).insert!('s')
      }.to change { heap }.to %w(t s r n p o a e i g h).unshift(nil)
    end
  end

  describe '#sink!' do
    it "moving element downwards to his position" do
      heap = %w(t h r p s o a e i n g).unshift(nil)
      expect {
        BinaryHeap.new(heap).sink!(2)
      }.to change { heap }.to %w(t s r p n o a e i h g).unshift(nil)
    end
  end

  describe '#delete_max' do
    it "updates the heap after removing" do
      heap = %w(t s r n p o a e i g h).unshift(nil)
      expect {
        BinaryHeap.new(heap).delete_max!
      }.to change { heap }.to %w(s p r n h o a e i g).unshift(nil).push(nil)
    end

    it "remove max element from the heap" do
      heap = %w(t s r n p o a e i g h).unshift(nil)
      expect(BinaryHeap.new(heap).delete_max!).to eq 't'
    end
  end
end
