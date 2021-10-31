def fib(n)
  table = Array.new(n + 1, 0)
  table[1] = 1

  table.length.times do |i|
   table[i + 1] += table[i] if table[i + 1]
   table[i + 2] += table[i] if table[i + 2]
  end
  p table
  table[n]
end

p fib(10)
