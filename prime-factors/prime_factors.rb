module PrimeFactors
  def self.for(num)
    prime_factors = []
    primes = [2]
    while num > 1 && primes.last <= num
      if num % primes.last == 0
        num = num / primes.last
        prime_factors << primes.last
      else
        primes << self.find_next_prime(primes.last)
      end
    end
    return prime_factors
  end

  def self.find_next_prime(last_prime)
    loop do
      last_prime += 1
      sqrt = Math.sqrt(last_prime).ceil
      return last_prime if (2..sqrt).all? { |int| last_prime % int != 0 }
    end
  end
end
