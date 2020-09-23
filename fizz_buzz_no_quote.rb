
def fizzBuzz(n)
    # Write your code here
    1.upto(n) do |x|
       if (x % 15 == 0)
         print "FizzBuzz\n"
       elsif (x % 3 == 0)
         print "Fizz\n"
       elsif (x % 5 == 0) 
         print "Buzz\n"
       else
         print "#{x}\n"
       end 
    end    
end


=begin
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
=end