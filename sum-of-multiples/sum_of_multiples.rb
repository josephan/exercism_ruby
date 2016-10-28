class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(num)
    multiples = []
    (1...num).each do |n|
      multiples << n if @factors.any? { |f| n % f == 0 }
    end
    multiples.inject(0) { |sum, i| sum + i }
  end
end
