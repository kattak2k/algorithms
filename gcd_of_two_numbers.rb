# 98 - 56 => # 42
# 56 - 42 => # 14
# 42 - 14 => # 28
# 28 - 14 => # 14

def gcd(a, b)
  # Everything divides 0
  return b if a == 0

  return a if b == 0

  # base case
  return a if a == b

  # a is greater
  return gcd(a - b, b) if a > b

  gcd(a, b - a)
end

# Driver program to test above function
a = 98
b = 56
p gcd(a, b)
