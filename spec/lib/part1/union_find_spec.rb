require 'part1/union_find'

RSpec.describe QuickFindUF do
  let(:qf) { QuickFindUF.new(5) }

  before do
    qf.ids = [0, 1, 1, 3, 4]
  end

  describe '.new' do
    subject { QuickFindUF.new(10).ids }

    it 'initializes array of points' do
      is_expected.to eq [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  end

  describe '#connected?' do
    subject { qf.connected?(p, q) }

    context 'when p.id is not same as q.id' do
      let(:p) { 1 }
      let(:q) { 4 }

      it { is_expected.to be_falsey }
    end

    context 'when p.id is the same as q.id' do
      let(:p) { 1 }
      let(:q) { 2 }

      it { is_expected.to be_truthy }
    end
  end

  describe '#union' do
    subject { qf.union p, q }

    context 'when item is alone in the group' do
      let(:p) { 4 }
      let(:q) { 0 }

      it do
        expect { subject }.to change { qf.ids }.to [0, 1, 1, 3, 0]
      end
    end

    context 'when item is not alone it the group' do
      let(:p) { 0 }
      let(:q) { 1 }

      it do
        expect { subject }.to change { qf.ids }.to [1, 1, 1, 3, 4]
      end
    end
  end
end
