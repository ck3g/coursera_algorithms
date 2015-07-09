require 'ostruct'
require 'part1/counter_clock_wise'

RSpec.describe CounterClockWise do
  describe '#detect' do
    subject { CounterClockWise.detect a, b, c }

    context 'when area of a -> b -> c is more than 0' do
      let(:a) { OpenStruct.new x: 3, y: 1 }
      let(:b) { OpenStruct.new x: 2, y: 3 }
      let(:c) { OpenStruct.new x: 1, y: 1 }

      it { is_expected.to eq :counterclockwise }
    end

    context 'when area of a -> b -> c is less than 0' do
      let(:a) { OpenStruct.new x: 1, y: 1 }
      let(:b) { OpenStruct.new x: 2, y: 3 }
      let(:c) { OpenStruct.new x: 3, y: 1 }

      it { is_expected.to eq :clockwise }
    end

    context 'when area of a -> b -> is 0' do
      let(:a) { OpenStruct.new x: 2, y: 1 }
      let(:b) { OpenStruct.new x: 2, y: 2 }
      let(:c) { OpenStruct.new x: 2, y: 3 }

      it { is_expected.to eq :collinear }
    end
  end
end
