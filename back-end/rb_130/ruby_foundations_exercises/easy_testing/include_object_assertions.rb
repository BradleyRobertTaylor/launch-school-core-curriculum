# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

assert_includes(list, 'xyz') # best

assert_equal(true, list.include?('xyz'))