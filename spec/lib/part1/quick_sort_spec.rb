require 'part1/quick_sort'

RSpec.describe QuickSort do
  describe '#partition' do
    it 'partitioning current array' do
      initial = %w(k r a t e l e p u i m q c x o s)
      # partitioned: %w(e c a i e k l p u t m q r x o s)
      expect(QuickSort.partition(initial, 0, 15)).to eq 5
    end
  end

  describe '#sort' do
    it 'sorts the array' do
      initial = %w(k r a t e l e p u i m q c x o s)
      expected = %w(a c e e i k l m o p q r s t u x)
      expect(QuickSort.sort(initial)).to eq expected
    end
  end
end
