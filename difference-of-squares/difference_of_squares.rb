class Squares
  VERSION = 1

  def initialize(int)
    @int = int
  end

  def square_of_sums
    (1..@int).inject(:+)**2
  end

  def sum_of_squares
    sum = 0
    (1..@int).each do |i|
      sum += i**2
    end
    sum
  end

  def difference
    square_of_sums - sum_of_squares
  end
end