class Binary
  def initialize(binary)
    @binary = binary
    raise ArgumentError unless binary_valid?
  end

  def to_decimal
    total = 0
    @binary.chars.reverse.each_with_index do |binary, index|
      total += binary.to_i * 2**index
    end
    total
  end

  private

  def binary_valid?
    @binary.chars.all? { |char| char.to_i < 2 } && @binary.match(/^(0|1)+$/)
  end
end

module BookKeeping
  VERSION = 2
end
