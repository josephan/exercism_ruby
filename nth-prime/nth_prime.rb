class Prime
  def self.nth(num)
    raise ArgumentError.new("Argument has to be 1 or greater.") if num < 1

    primes = [2]

    (3..Float::INFINITY).step(2) do |i|
      return primes.last if primes.length == num

      sqrt = Math.sqrt(i).ceil
      bool = primes.take_while { |prime| prime <= sqrt }
            .any? { |n| i % n == 0  }
      primes << i unless bool
    end
  end
end