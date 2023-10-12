class Solver
  def factorial(int)
    raise ArgumentError, 'Cannot find the factorial of a negative number' if int.negative?

    result = 1
    (result..int).each do |i|
      result *= i
    end
    result
  end

  def reverse(str)
    str.chars.reverse.join
  end

  def fizzbuzz(int)
    if (int % 15).zero?
      'fizzbuzz'
    elsif (int % 5).zero?
      'buzz'
    elsif (int % 3).zero?
      'fizz'
    else
      int.to_s
    end
  end
end
