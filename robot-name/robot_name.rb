class Robot
  attr_reader :name
  @@names = []

  def initialize
    check_if_name_exists
    @@names << @name
  end

  def reset
    old_name = @@names.delete(@name)
    while @name == old_name || @@names.include?(@name)
      @name = generate_random_name
    end
  end

  private

  def check_if_name_exists
    name = generate_random_name
    while @@names.include?(name)
      name = generate_random_name
    end
    @name = name
  end

  def generate_random_name
    name = ""
    name << ("A".."Z").to_a.sample(2).join
    name << (0..9).to_a.sample(3).join
  end
end

module BookKeeping
  VERSION = 2
end
