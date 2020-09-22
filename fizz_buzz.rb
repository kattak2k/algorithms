# frozen_string_literal: true

# Find fizz buzz in an array of the integers

# A program that prints the numbers from 1 to 50 and for multiples of '3' print "Fizz" instead of the number
# and for the multiples of '5' print "Buzz" and if multiplied by both print fizzbuzz

def fzbz_group(arr)
  fbz = []
  fbz = arr.group_by do |x|
    case x
    when ->(y) { fizzbuzz(y) } then 'fizzbuzz'
    when ->(y) { buzz(y) } then 'buzz'
    when ->(y) { fizz(y) } then 'Fizz'
    else 'none'
    end

    #  if fizzbuzz(x) then 'fizzbuzz'
    #   elsif buzz(x) then 'buzz'
    #   elsif  fizz(x) then 'Fizz'
    #   else 'none'
    #   end
  end

  fbz
end

def fizz(x)
  (x % 3).zero?
end

def buzz(x)
  (x % 5).zero?
end

def fizzbuzz(x)
  (x % 15).zero?
end

A = (1..50).to_a.freeze

# p fzbz(A)
#=> [1, 2, "Fizz", 4, "buzz", "Fizz", 7, 8, "Fizz", "buzz", 11, "Fizz", 13, 14,
#    "fizzbuzz", 16, 17, "Fizz", 19, "buzz", "Fizz", 22, 23, "Fizz", "buzz", 26,
#    "Fizz", 28, 29, "fizzbuzz", 31, 32, "Fizz", 34, "buzz", "Fizz", 37, 38, "Fizz",
#   ` "buzz", 41, "Fizz", 43, 44, "fizzbuzz", 46, 47, "Fizz", 49, "buzz"]

p fzbz_group(A)
#=> {"none"=>[1, 2, 4, 7, 8, 11, 13, 14, 16, 17, 19, 22, 23, 26, 28, 29, 31, 32, 34, 37, 38, 41, 43, 44, 46, 47, 49],
#   "Fizz"=>[3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48],
#   "buzz"=>[5, 10, 20, 25, 35, 40, 50],
#   "fizzbuzz"=>[15, 30, 45]}
