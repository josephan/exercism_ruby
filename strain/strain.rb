class Array
  def keep
    new_arr = []
    self.each do |element|
      new_arr << element if yield(element)
    end
    new_arr
  end

  def discard
    new_arr = []
    self.each do |element|
      new_arr << element unless yield(element)
    end
    new_arr
  end
end
