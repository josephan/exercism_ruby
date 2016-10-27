class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(num)
    multiples = []
    (1...num).each do |n|
      @factors.each do |m|
        multiples << n if n % m == 0
      end
    end
    multiples.uniq.inject(0) { |sum, i| sum + i }
  end
end
