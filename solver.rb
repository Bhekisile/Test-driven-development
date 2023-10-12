class Solver
  def factorial(int)
    raise ArgumentError, 'Cannot find the factorial of a negative number' if int.negative?

    result = 1
    (result..int).each do |i|
      result *= i
    end
    result
  end
end
