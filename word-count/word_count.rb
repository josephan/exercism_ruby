class Phrase
  attr_reader :word_count

  def initialize(words)
    @word_count = {}
    words = words.split(" ").select { |w| w.match(/[a-z]/i) }
    words.map { clean(word) }
    words.each do |word|
      @word_count[word] = words.count(word)
    end
  end

  private

  def clean_word(word)
    word.match(/[a-z]+'?[a-z]+/i)
  end
end

module BookKeeping
  VERSION = 1
end
