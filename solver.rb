class Solver
 
  def factorial(int)

    if int < 0
      raise ArgumentError, "Cannot find the factorial of a negative number"
    end
    result = 1
    for i in result..int do
      result *= i
    end
    result
  end

end