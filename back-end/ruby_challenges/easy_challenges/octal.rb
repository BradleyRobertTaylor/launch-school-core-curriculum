class Octal
  attr_reader :base_ten

  def initialize(base_ten)
    @base_ten = base_ten
  end

  def to_decimal
    return 0 if base_ten =~ /[a-z8-9]/i
    
    index = base_ten.length - 1
    exponent = 0
    result = 0
    index.downto(0).each do |index|
      result += (base_ten[index].to_i * (8**exponent))
      exponent += 1
    end

    result
  end
end