require 'part1/unordered_max_priority_queue'

RSpec.describe UnorderedMaxPriorityQueue do
  let(:queue) { UnorderedMaxPriorityQueue.new }

  describe '#empty?' do
    subject { queue }

    context 'when queue contains to items' do
      it { is_expected.to be_empty }
    end

    context 'when queue contains at least one item' do
      before { queue.insert 1 }
      it { is_expected.not_to be_empty }
    end
  end

  describe '#del_max' do
    subject { queue.del_max }

    context 'when queue contains 1, 5, 3, 2' do
      before do
        [1, 5, 3, 2].each { |item| queue.insert item }
      end
      it { is_expected.to eq 5 }
    end
  end
end
