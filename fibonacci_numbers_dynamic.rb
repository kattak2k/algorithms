# frozen_string_literal: true

# Building Fibonacci numbers by recursive iteration
=begin
def fib_no(max_val, series)
  # return If the iteration reached the max value
  return series if series[-1] == max_val

  # check of the array is empty
  case series.length
  when 0..1
    series << 0 << 1
  else
    # add the previous 2 elements of an array and append it as next element
    series << series[series.length - 1] + series[series.length - 2]
  end

  fib_no(max_val, series)
end

# call method definition
p fib_no(34, []) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

=end
@cache = [0,1]
def fib(n)
  return @cache[n] if @cache[n]
  @cache[n] = fib(n-1) + fib(n-2)

end 

fib(10)
p @cache