require 'part1/selection'

RSpec.describe Selection do
  describe '#select' do
    it "selects element" do
      arr = [11, 40, 13, 51, 17, 24, 32]
      expect(Selection.select(arr, 2)).to eq 17
    end
  end
end
