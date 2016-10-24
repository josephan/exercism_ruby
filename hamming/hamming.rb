class Hamming
  VERSION = 1

  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    a = a.chars
    b = b.chars
    diff = 0
    a.each_with_index do |letter, i|
      diff += 1 if letter != b[i]
    end
    diff
  end
end