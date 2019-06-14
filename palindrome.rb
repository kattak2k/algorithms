# Palindrome
# check to see the string or words can be read from both the sides
# i.e arora is palindrome , and cat <=> tac is not a palindrome

def palindrome(value)
  # convert the value to a string
  str_val = value.to_s

  # reverse a string
  str_val2 = str_val.reverse

  # check to see if both the strings are equal or not
  str_val == str_val2
end

# test 1
 p palindrome(-1) . #=> false

# test 2
#p palindrome('arora') #=> true
