class Series
  def initialize(string)
    @string = string
  end

  def slices(n)
    raise ArgumentError if n > @string.length
    @string.chars.map(&:to_i).each_cons(n).to_a
  end
end
