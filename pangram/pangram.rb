class Pangram
  VERSION = 1

  def self.is_pangram?(str)
    str.downcase.tr('^a-z','').chars.uniq.length == 26
  end
end