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
