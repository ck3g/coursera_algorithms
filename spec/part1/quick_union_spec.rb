require_relative '../../part1/quick_union'

RSpec.describe QuickUnionUF do
  let(:qu) { QuickUnionUF.new 5 }

  before do
    qu.ids = [0, 1, 3, 1, 4]
  end

  describe '.new' do
    subject { QuickUnionUF.new(10).ids }
    it { is_expected.to eq (0..9).to_a }
  end

  describe '#connected?' do
    subject { qu.connected? p, q }

    context 'when p and q have same roots' do
      let(:p) { 1 }
      let(:q) { 2 }
      it { is_expected.to be_truthy }
    end

    context 'when p and q have different roots' do
      let(:p) { 1 }
      let(:q) { 4 }
      it { is_expected.to be_falsey }
    end
  end

  describe '#union' do
    subject { qu.union p, q }

    context 'when q is tree already' do
      let(:p) { 0 }
      let(:q) { 2 }

      it do
        expect { subject }.to change { qu.ids }.to [1, 1, 3, 1, 4]
      end
    end

    context 'when q is a single element' do
      let(:p) { 0 }
      let(:q) { 4 }

      it do
        expect { subject }.to change { qu.ids }.to eq [4, 1, 3, 1, 4]
      end
    end
  end
end
