# frozen_string_literal: true

# make a list of duplicates in array and find there indexes

# 1. we'll see how can we find duplicates in an array
# 2. next we'll write another code to find there indexes as well

# find duplicates in an array using slect method
def just_duplicates(arr)
  arr.select { |x| arr.count(x) > 1 }.uniq!
end

# find deuplicates and its count in an array using group_by method
def duplicates_count(arr)
  arr.group_by { |x| arr.count(x) }
end

# find duplicate and there indexes
def duplicates_indexes(arr)
  out = []
  arr.each_with_index do |x, i|
   out << [x, i] if arr.count(x) > 1
  end
  out
end

A = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 6, 7, 7, 8, 8, 8].freeze

p just_duplicates(A) #=>[2, 3, 4, 7, 8]

p duplicates_count(A) #=> {1=>[1, 5, 6], 2=>[2, 2, 7, 7], 3=>[3, 3, 3, 8, 8, 8], 4=>[4, 4, 4, 4]}

p duplicates_indexes(A)
#=> [[2, 1], [2, 2], [3, 3], [3, 4], [3, 5], [4, 6], [4, 7], [4, 8], [4, 9], [7, 12], [7, 13], [8, 14], [8, 15], [8, 16]] 
# [value, index]
