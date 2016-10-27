class Array
  def accumulate
    self.map { |el| yield el }
  end
end
