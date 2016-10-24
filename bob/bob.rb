class Bob
  def hey(remark)
    return 'Whoa, chill out!' if remark == remark.upcase && remark.match(/[A-Z]+/)
    return 'Sure.' if remark[-1] == '?'
    return 'Fine. Be that way!' if remark.empty? || remark.match(/^\s+$/)
    'Whatever.'
  end
end
