require 'byebug'
class ETL
  def self.transform(old)
    new = {}
    old.each do |point, letters|
      letters.each do |letter|
        new[letter.downcase] = point
      end
    end
    return new
  end
end
