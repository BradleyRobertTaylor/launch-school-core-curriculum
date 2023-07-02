CONVERSION = { '0' => 0, '1' => 1, '2' => 2,
               '3' => 3, '4' => 4, '5' => 5,
               '6' => 6, '7' => 7, '8' => 9,
}


def string_to_integer(string)
  numbers = string.chars.map { |char| CONVERSION[char] }

  value = 0
  numbers.each do |number|
    value = value * 10 + number
  end

  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then  string_to_integer(string[1..-1])
  else           string_to_integer(string)
  end
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100