def joinor(arr, str1=nil, str2=nil)
  if str1 == nil && str2 == nil && arr.size == 2
    arr[-1] = "or #{arr[-1]}"
    arr.join(" ")
  elsif str1 == nil && str2 == nil
    arr[-1] = "or #{arr[-1]}"
    arr.join(", ")
  elsif str1 && str2 == nil
    arr[-1] = "or #{arr[-1]}"
    arr.join("#{str1}")
  else
    arr[-1] = "#{str2} #{arr[-1]}"
    arr.join("#{str1}")
  end
end

# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end


p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"