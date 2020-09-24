=begin
// --- Directions
// Create a stack data structure.  The stack
// should be a class with methods 'push', 'pop', and
// 'peek'.  Adding an element to the stack should
// store it until it is removed.
// --- Examples
//   const s = new Stack();
//   s.push(1);
//   s.push(2);
//   s.pop(); // returns 2
//   s.pop(); // returns 1
=end
class Stack
    attr_accessor :data
      def initialize
        @data = []
      end
  
      def add(n)
        # add to front   
        @data.push(n)
        p @data
      end
  
      def remove
      # remove at end  
        @data.pop()
        p @data
      end
  end
  
  
  data = Stack.new
  
  data.add(4)
  data.add(5)
  data.add(6)
  data.add(7)
  
  data.remove
  data.remove