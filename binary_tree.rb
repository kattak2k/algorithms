# frozen_string_literal: true

# https://blog.codeship.com/the-enumerable-module/
class Node
  include Comparable
  include Enumerable
  attr_accessor :left, :value, :right

  def initialize(value)
    self.value = value
  end

  def each(&block)
    return to_enum(:each) unless block

    left&.each(&block)
    block.call(value)
    right&.each(&block)
  end

  def add(other)
    other = Node.new(other) unless other.is_a? Node
    if other > self
      if left
        left.add(other)
      else
        self.left = other
      end
    elsif other < self
      if right
        right.add(other)
      else
        self.right = other
      end
    end
  end

  def <=>(other)
    value <=> other.value
  end

  def to_s
    value
  end
  end

  p Enumerator.ancestors
  # Creating a root node and adding some children
root = Node.new(10)
root.add(5)
root.add(15)
root.add(20)
root.add(1)

p root.map { |item| item }
# => [20, 15, 10, 5, 1]
p root.max
# => 20
p root.sort
# [1, 5, 10, 15, 20]

enum = root.each
puts enum.class
# => Enumerator
puts enum.next
# => 20
puts enum.next
# => 15