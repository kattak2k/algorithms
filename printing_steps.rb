=begin
 step(2)
    '# '
    '##'
  step(4)
    '#   '
    '##  '
    '### '
    '####'   
=end
# solution 1
def steps(n) 
    1.upto(n) do |x|
        li = '#'*x + " "*(n-x)
        p li
    end
end   

#steps(3)

=begin
"#  "
"## "
"###"
=end

# recursive solution 2

def steps2(n, row = 0, stair= '')

    exit if n === row

    if stair.length === n
      p stair
      steps2(n, row+1)
    end

    add = stair.length <= row ? '#' : ' '
    steps2(n, row, stair + add)
    
end    

steps2(4)