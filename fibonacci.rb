# solution 1
def fib(n)
 result = [0,1]

 2.upto(n) do |x|
    result[x] = result[x-1] + result[x-2] 
 end

 p result

end   

#fib(10) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# solution 1 - recursion
@result = []
def fib2(n)
   if n < 2
    return n
   end

   return fib2(n-1) + fib2(n-2)
end 

aa = fib2(10)
p aa

#solution 3
@cache = [0,1]
def fib(n)
  return @cache[n] if @cache[n]
  @cache[n] = fib(n-1) + fib(n-2)

end 