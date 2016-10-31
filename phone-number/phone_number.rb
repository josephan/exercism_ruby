class PhoneNumber
  attr_reader :number

  def initialize(number)
    @number = clean_number(number)
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code})" + " #{number[3..5]}-#{number[6..9]}"
  end

  private

  def clean_number(number)
    sequential_numbers = number.match(/\d{3,}/)
    number = number.gsub(/\D/, '')
    number_too_long = number.length > 11
    number_too_short = number.length < 10

    if number.length > 10
      number_long_and_doesnt_start_with_one = number[0] != '1'
      number[0] = ''
    end

    return '0000000000' if number_too_long || number_too_short || number_long_and_doesnt_start_with_one || !sequential_numbers
    number
  end
end
