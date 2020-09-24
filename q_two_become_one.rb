
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

  class Queue
    attr_accessor :first, :second
    
      def initialize
        @first = Stack.new.data
        @second = Stack.new.data
      end
  
      def add(n)
        # add to front   
        @first.push(n)
        p "1st st Push: #{@first}"
      end
  
      def remove

        return "queue is empty" if @first.empty?
      # remove at end  
        @first.length.times do 
          @second.push(@first.pop())
        end

        p "2 stack: #{@second}"
        val = @second.pop()
        p "Pop: #{val}"
        
        # put every thing back in first stack
        @second.length.times do
          @first.push(@second.pop())
        end
        p "2nd Push: #{@first}"
        
      end
  end


  data = Queue.new

  data.add(4)
  data.add(5)
  data.add(6)
  data.add(7)

  data.remove
  data.remove
  data.remove
  data.remove
  data.remove
