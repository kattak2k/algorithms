=begin
    Given a list of non-negative integers nums, arrange them such that they form the largest number.
    Note: The result may be very large, so you need to return a string instead of an integer.
    

    Example 1:

    Input: nums = [10,2]
    Output: "210"
    Example 2:

    Input: nums = [3,30,34,5,9]
    Output: "9534330"
=end

def dups(arr)
   
    combinations = []
    perm = arr.permutation.to_a

    perm.each{|x| combinations << x.join('')}

    combinations.max.to_i
end    


p dups([3,30,34,5,9])  #==> 9534330
p dups([10,2]) #==> 210