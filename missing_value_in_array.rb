# You are given a list of n-1 integers and these integers are in the range of 1 to n. 
# There are no duplicates in list. One of the integers is missing in the list. 
# Write an efficient code to find the missing integer.


def missing(ad)
  sum_of_ad = 0
  n = ad.count
  total = (n + 1) * (n + 2) / 2
  sum_of_ad = ad.inject(0){|sum,x| sum + x }
  total - sum_of_ad
end

aa = [1, 2, 4, 5, 6]
p missing(aa) #=> 3
