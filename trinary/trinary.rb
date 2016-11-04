class Trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 unless @trinary.match(/\A[012]+\z/)
    decimal = 0
    @trinary.reverse.chars
      .each_with_index { |tri, ind| decimal += tri.to_i*3**ind }
    decimal
  end
end

module BookKeeping
  VERSION = 1
end
