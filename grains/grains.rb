module Grains
  TOTAL_SQUARES = 64
  MULTIPLIER = 2
  INITIAL_NUMBER_OF_GRAINS = 1

  def self.square(num)
    INITIAL_NUMBER_OF_GRAINS * (MULTIPLIER ** (num - 1))
  end

  def self.total
    INITIAL_NUMBER_OF_GRAINS * ((1 - MULTIPLIER**TOTAL_SQUARES) / (1 - MULTIPLIER))
  end
end
