# Write a minitest assertion that will fail if the value.odd? is not true.

assert_equal(true, value.odd?) # passes if argument returns boolean true

assert(value.odd?), 'value is not odd' # passes if argument is truthy