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

    # it 'return one when number is zero' do
    #   expect(subject.factorial(-1)).to raise(ArgumentError)
    # end
  end

  context '#reverse' do
    it "returns reversed string" do
      expect(subject.reverse('hello')).to eq('olleh')
    end
  end
end
