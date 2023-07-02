def maskify(string)
  if string.length <= 4
    string
  else
    ("#" * (string.length - 4)) + string[-4, 4]
  end
end

p maskify('64607935616')      # should return '#######5616'
p maskify('1')                # should return '1'
p maskify('')                 # should return ''