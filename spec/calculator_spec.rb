# frozen_string_literal: true

require './calculator'

describe Calculator do
  context '#add' do
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

    it 'should handle new lines between numbers' do
      response = calc.add('1\n2,3')
      expect(response).to eq(6)
    end

    it 'should handle delimiters in the input' do
      response = calc.add('//;\n1;2')
      expect(response).to eq(3)
    end

    it 'should raise an exception for negative numbers' do
      expect { calc.add('-1') }.to raise_exception
    end

    it 'should raise an exception and print the negative numbers' do
      response = calc.add('//;\n-1;-2,3,6')
      expect(response).to raise_exception 'negative numbers not allowed -1, -2'
    end
  end
end
