# Write a minitest assertion that will fail if the Array list is not empty.

assert(list.empty?)

assert_empty(list)  # best

assert_equal(true, list.empty?)