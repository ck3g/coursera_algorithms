require_relative '../../part1/binary_search'

RSpec.describe 'Binary search' do
  context 'when sequence is [1, 3, 5, 7, 9, 10]' do
    let(:array) { [1, 3, 5, 7, 9, 10] }

    context 'when looking for 3' do
      it do
        expect(binary_search(array, 3)).to eq 1
      end
    end

    context 'when looking for 2' do
      it do
        expect(binary_search(array, 2)).to eq -1
      end
    end
  end
end
