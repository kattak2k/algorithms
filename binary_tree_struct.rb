# frozen_string_literal: true

# Binary tree Traversal , in-order , pre-order, post-order, level-order
#  # https://coderbyte.com/algorithm/tree-traversal-algorithms
#         A
#        / \
#       B   C
#      / \
#     D   E
#        / \
#        F  G
#
#================= Build Tree ======================#
node = Struct.new(:data, :left, :right)

root                    = node.new('A', 'B', 'C')
root.left               = node.new('B', 'D', 'E')
root.right              = node.new('C', false, false)
root.left.left          = node.new('D', false, false)
root.left.right         = node.new('E', 'F', 'G')
root.left.right.left    = node.new('F', false, false)
root.left.right.right   = node.new('G', false, false)

# p root #=> #<struct data="A", left=#<struct data="B",
#               left=#<struct data="D", left=false, right=false>,
#               right=#<struct data="E", left=#<struct data="F", left=false, right=false>,
#              right=#<struct data="G", left=false, right=false>>>,
#               right=#<struct data="C", left=false, right=false>>

# p root.left.right.right  #=> G

#=================== pre_order ========================#
# 1)root node value. 2)recursive left traverse. 3)recursive right traverse.

def pre_order(root, nodes)
  nodes << root.data
  pre_order(root.left, nodes) if root&.left
  pre_order(root.right, nodes) if root&.right

  nodes
end

p pre_order(root, []) #=> ["A", "B", "D", "E", "F", "G", "C"]

#=================== in_order =========================#
# 1)recursive left traverse.  2)root node value. 3)recursive right traverse.

def in_order(root, nodes)
  in_order(root.left, nodes) if root&.left
  nodes << root.data
  in_order(root.right, nodes) if root&.right

  nodes
end
p in_order(root, []) #=>["D", "B", "F", "E", "G", "A", "C"]

#=================== post_order =========================#
# 1)recursive left traverse. 2)recursive right traverse. 3)root node value. 

def post_order(root, nodes)
  post_order(root.left, nodes) if root&.left
  post_order(root.right, nodes) if root&.right
  nodes << root.data

  nodes
end

p post_order(root, []) #=>["D", "F", "G", "E", "B", "C", "A"]

#=================== level_order =========================#
# 1) Add the root to a queue.
# 2) Pop the last node from the queue, and return its value.
# 3) Add all children of popped node to queue, and continue from step 2 until queue is empty.

def level_order(root, nodes)
  queue = [root]
  loop do
    n = queue.pop
    nodes.append(n.data)
    queue.append(n.left) if n&.left
    queue.append(n.right) if n&.right
    break if queue.empty?
  end
  nodes
end

p level_order(root, []) # => ["A", "C", "B", "E", "G", "F", "D"]

#=================== breadth_first_search =================#
def bfs(root,nodes)
  if root.nil?
    return
  end

  queue = []
  queue.push(root)
  while queue.any?
    node = queue.shift
    nodes << node.data
    queue.push(node.left) if node&.left
    queue.push(node.right) if node&.right
  end
  nodes
end

p bfs(root,[])  #=> ["A", "B", "C", "D", "E", "F", "G"]
