class Sieve
  def initialize(num)
    @nums = (2..num).to_a
  end

  def primes
    @nums.each do |num1|
      next unless index = @nums.index(num1)
      @nums.drop(index + 1).each do |num2|
        @nums.delete(num2) if num2 % num1 == 0
      end
    end
  end
end