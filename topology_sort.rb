=begin
https://ruby-doc.org/stdlib-2.4.1/libdoc/tsort/rdoc/TSort.html

Is mainly iused for dependency sorting
=end

require 'tsort'

class Hash
  include TSort
  alias tsort_each_node each_key
  def tsort_each_child(node, &block)
    fetch(node).each(&block)
  end
end

def dependency_sort(v={})
 p v.tsort
end

hashes = {1=>[2, 3], 2=>[3], 3=>[], 4=>[]}
dependency_sort(hashes)

#{1=>[2, 3], 2=>[3], 3=>[], 4=>[]}.tsort
#=> [3, 2, 1, 4]


# TSort#tsort

# Returns a topologically sorted array of nodes. The array is sorted from children to parents, i.e. the first element has no child and the last node has no parent.

# If there is a cycle, TSort::Cyclic is raised.

# class G
#   include TSort
#   def initialize(g)
#     @g = g
#   end
#   def tsort_each_child(n, &b) @g[n].each(&b) end
#   def tsort_each_node(&b) @g.each_key(&b) end
# end

# graph = G.new({1=>[2, 3], 2=>[4], 3=>[2, 4], 4=>[]})
# p graph.tsort #=> [4, 2, 3, 1]

# graph = G.new({1=>[2], 2=>[3, 4], 3=>[2], 4=>[]})
# p graph.tsort # raises TSort::Cyclic
