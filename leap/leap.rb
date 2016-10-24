class Year
  def self.leap?(year)
    if year % 4 == 0
      if year % 100 == 0
        return year % 400 == 0
      else
        true
      end
    else
      false
    end
  end
end

module BookKeeping
  VERSION = 2
end
