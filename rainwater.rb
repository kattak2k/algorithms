# Trapping Rain Water
# -------------------
# Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.
# Examples:
#
# Input: arr[]   = {2, 0, 2}
# Output: 2
# Structure is like below
# | |
# |_|
# We can trap 2 units of water in the middle gap.
#
# Input: arr[]   = {3, 0, 0, 2, 0, 4}
# Output: 10
# Structure is like below
#      |
# |    |
# |  | |
# |__|_|
# We can trap "3*2 units" of water between 3 an 2,
# "1 unit" on top of bar 2 and "3 units" between 2
# and 4.  See below diagram also.
#
# Input: arr[] = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
# Output: 6
#        |
#    |   || |
# _|_||_||||||
# Trap "1 unit" between first 1 and 2, "4 units" between
# first 2 and 3 and "1 unit" between second last 1 and last 2

def fill_water(arr)
  # create 2 empty arrays
  arr1 = []
  arr2 = []
  final = []
  init = 0

  # storing maxheight seen so far from left side
  arr.each do |val|
    if val >= init
      arr1 << val
      init = val
    else
      arr1 << init
    end
  end

  init = 0
  # storing maxheight seen so far from right side
  arr.reverse_each do |val|
    if val >= init
      arr2 << val
      init = val
    else
      arr2 << init
    end
  end
  arr2.reverse! # bring into orginal shape

  # water at index
  arr1.each_with_index do |x, i|
    final << [x, arr2[i]].min - arr[i]
  end

  # total sum of water
  final.sum
end

# test1
 p fill_water([3, 0, 0, 2, 0, 4])  # =>10

# test2
# p fill_water([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]) # =>6
