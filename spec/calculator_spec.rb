# frozen_string_literal: true

require './calculator'

describe Calculator do
  describe '#add' do
    let!(:calc) { Calculator.new }

    it 'should return 0 for nil or empty string' do
      response = calc.add(' ')
      expect(response).to eq(0)
    end

    it 'should return the sum for a single number' do
      response = calc.add('1')
      expect(response).to eq(1)
    end

    it 'should return sum for comma separted values' do
      response = calc.add('5, 6')
      expect(response).to eq(11)
    end
  end
end
