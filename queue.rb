class Queue
  attr_accessor :data
    def initialize
      @data = []
    end

    def add(n)
      # add to front   
      @data.unshift(n)
      p @data
    end

    def remove
    # remove at end  
      @data.pop()
      p @data
    end
end


data = Queue.new

data.add(4)
data.add(5)
data.add(6)
data.add(7)

data.remove
data.remove
