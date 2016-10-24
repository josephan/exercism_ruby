class Gigasecond
  VERSION = 1
  GIGA = 1_000_000_000
  def self.from(time_object)
    time_object + GIGA
  end
end