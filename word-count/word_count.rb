require 'byebug'
class Phrase
  attr_reader :word_count

  def initialize(words)
    @word_count = {}
    words = words.downcase.split(/\s|,/).select { |w| w.match(/\w/i) }
    words.map! { |w| clean_word(w) }
    words.each do |word|
      @word_count[word] = words.count(word)
    end
  end

  private

  def clean_word(word)
    return word if word.match(/^\w+$/)
    word.scan(/\w+'?\w+?/i).first
  end
end

module BookKeeping
  VERSION = 1
end
