require 'part1/shell_sort'

RSpec.describe ShellSort do
  describe '#sort' do
    it 'places array items in proper order' do
      initial = [2, 5, 1, 4, 3]
      expected = [1, 2, 3, 4, 5]
      expect(ShellSort.sort(initial)).to eq expected
    end
  end
end
