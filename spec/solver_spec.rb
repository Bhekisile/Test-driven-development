require 'rspec'
require './solver'

describe Solver do
  subject { Solver.new }
  context '#factorial' do
    it 'return the factorial for a number' do
      expect(subject.factorial(3)).to eq(6)
      expect(subject.factorial(5)).to eq(120)
    end

    it 'return one when number is zero' do
      expect(subject.factorial(0)).to eq(1)
    end

    it 'raise argumenTError when number is negative' do
      expect(subject.factorial(-1)).to raise(ArgumentError)
    end
  end

  context '#reverse' do
    it 'returns reversed string' do
      expect(subject.reverse('hello')).to eq('olleh')
    end
  end

  context '#fizzbuzz' do
    it 'return fizz when number is divisible only by 3' do
      expect(subject.fizzbuzz(3)).to eq('fizz')
      expect(subject.fizzbuzz(6)).to eq('fizz')
    end
    it 'return buzz when number is divisible only by 5' do
      expect(subject.fizzbuzz(5)).to eq('buzz')
      expect(subject.fizzbuzz(10)).to eq('buzz')
    end
    it 'return fizzbuzz when number is divisible  by 3 and 5' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
      expect(subject.fizzbuzz(45)).to eq('fizzbuzz')
    end
    it 'return stringified number when number is not divisible  by both 3 and 5 or either' do
      expect(subject.fizzbuzz(7)).to eq('7')
      expect(subject.fizzbuzz(2)).to eq('2')
    end
  end
end
