=being
=begin the greatest common divisor(GCD), also called highest common factor(HCF) of N numbers
is the largest positive integer that divides all the numbers without giving a number

write a algorithm to determine the GCD of N positive integers

explanation:
a = [2,4,6,8,10]
output 2
The largest postive integer that divide all the positive integers 2,4,6,8,10 without 
a reminder is 2 . so, the output is 2 =end
=end
  
def get_gcd(arr)
  val = 0
  arr.each do |x|
    new_arr = []
    arr.each do |y|
      new_arr << if y % x == 0
                   0
                 else
                   x
                 end
    end
    next unless new_arr.sum == 0

    val = x if x > val
  end
  val == 0 ? 1 : val
end

p get_gcd([2,4,6,8,10])

# p get_gcd([2, 3, 4, 8, 10])
