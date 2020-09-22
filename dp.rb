# frozen_string_literal: true

# simple dynamic program to return the last element of an array
def dp(arr, old = 0) 
  return old if arr.empty?

  old = arr.shift
  dp(arr, old)
end

p dp([45, 46, 47, 48, 49, 50])  #=> 50
