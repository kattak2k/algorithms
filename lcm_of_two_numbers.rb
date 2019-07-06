# frozen_string_literal: true

# Recursive function to return gcd of a and b
def gcd(a, b)
  return b if a == 0

  gcd(b % a, a)
 end

# Function to return LCM of two numbers
def lcm(a, b)
  (a * b) / gcd(a, b)
end

# Driver program to test above function
#p lcm(15, 20)
p lcm(98, 56)

