# frozen_string_literal: true

# def parts(_number, parts)
#   assemble = []
#   val = 0
#   sorted_parts = parts.sort

#   sorted_parts.each_with_index do |x, i|
#     assemble << if i != 0
#                   x + (assemble[-1] || 0)
#                 else
#                   x
#                 end
#   end
#   assemble.shift
#   assemble.sum
# end

# parts(4, [20, 4, 8, 2])

require 'benchmark'

def optimalUtilization(maxTravelDist, forwardRouteList, returnRouteList)
  curated = []
  time = []
  final = []
  time = Benchmark.measure do
    forwardRouteList.each do |x|
      returnRouteList.each do |y|
        if x[1] + y[1] <= maxTravelDist
          time << x[1] + y[1]
          curated << [x[0], y[0]]
         end
      end
    end

    max = time.max
    time.each_with_index do |x, i|
      final << curated[i] if max == x
    end
  end
  p "-----#{time}-------"
  final
end

p optimalUtilization(7000, [[1, 2000], [2, 4000], [3, 6000]], [[1, 2000],[2, 3000]])

=begin
            user     system      total        real
for:      0.970000   0.000000   0.970000 (  0.970493)
times:    0.990000   0.000000   0.990000 (  0.989542)
upto:     0.970000   0.000000   0.970000 (  0.972854)
>total:   2.930000   0.000000   2.930000 (  2.932889)
>avg:     0.976667   0.000000   0.976667 (  0.977630)
=end