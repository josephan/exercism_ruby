class Complement
  def self.of_dna(string)
    raise ArgumentError unless string =~ /^[gcta]+$/i
    string.chars.map do |char|
      MAPPING[char]
    end.join("")
  end

  MAPPING = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  VERSION = 3
end