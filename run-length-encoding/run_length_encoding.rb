require 'byebug'
module RunLengthEncoding
  def self.encode(string)
    encoded_string = ""
    last_char = ""
    last_char_count = 0

    string.chars.each do |char|
      if char != last_char
        last_char_count = "" if last_char_count < 2
        encoded_string += "#{last_char_count}#{last_char}"
        last_char = char
        last_char_count = 0
      end
      last_char_count += 1
    end

    last_char_count = "" if last_char_count < 2
    encoded_string += "#{last_char_count}#{last_char}"
    return encoded_string
  end

  def self.decode(string)
    decoded_string = ""
    char_count = ""
    last_char = ""

    string.chars.each do |char|
      if char.to_i == 0
        char_count = "1" if last_char.to_i == 0 && last_char != char
        last_char = char
        decoded_string += char * char_count.to_i
        char_count = ""
      else
        char_count += char
      end
      last_char = char
    end

    return decoded_string
  end
end

module BookKeeping
  VERSION = 2
end
