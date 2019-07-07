# frozen_string_literal: true

# Given an array A (distinct elements) of size N. Rearrange the elements of array in zig-zag fashion.
# The converted array should be in form a < b > c < d > e < f. The relative order of elements is same
# in the output i.e you have to iterate on the original array only.

def zig_zag(arr)
  # return 0 unless arr.length > 1

  arr.each_with_index do |x, i|
    return arr if arr[i + 1].nil?

    y = x
    if (x > arr[i + 1]) && i.even?
      arr[i] = arr[i + 1]
      arr[i + 1] = y
    elsif (x < arr[i + 1]) && i.odd?
      arr[i] = arr[i + 1]
      arr[i + 1] = y
    end
  end
 end



# p zig_zag([3])

#p zig_zag([4, 3, 7, 8, 6, 2, 1])
# 3 7 4 8 2 6 1

p zig_zag([1, 4, 3, 2])
# 1 4 2 3
