require 'part1/merge_sort'

RSpec.describe 'Merge Sort Algorithm' do
  describe '#merge' do
    it "merges two sorted arrays" do
      arr = [1, 3, 3, 5, 2, 3, 4, 7]
      expect(MergeSort.merge(arr, 0, 3, 7))
        .to eq [1, 2, 3, 3, 3, 4, 5, 7]
    end
  end

  describe '#sort' do
    it "sorts the array" do
      arr = [3, 1, 5, 3, 7, 3, 4, 2]
      expect(MergeSort.sort(arr, 0, 7))
        .to eq [1, 2, 3, 3, 3, 4, 5, 7]
    end
  end
end
