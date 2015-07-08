require 'part1/evaluate'

RSpec.describe '#evaluate' do
  it 'evaluate ariphmetic expression' do
    expression = '(1 + ((2 + 3) * (4 * 5)))'
    expect(evaluate(expression)).to eq 101
  end
end
