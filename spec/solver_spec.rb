require 'rspec'
require './solver'

describe Solver do
  subject { Solver.new }
  context "#factorial" do
    it "return the factorial for a number" do
      expect(subject.factorial(3)).to eq(6)
      expect(subject.factorial(5)).to eq(120)
    end
  end
end