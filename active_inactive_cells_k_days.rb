# Problem Statement
#  A colony of eight houses, represented as cells, are arranged in a straight line. Each day evry cell competes with its adjacent cells (neighbours). An integer value of 1 represents an active cell and value of 0 represents as inactive cell. If both the neighbours are either active or inactive, the cell becomes inactive the next day, otherwise it becomes active on the next day.
#
#  The two cells on the ends have a single adjacent cell, so the other adjacent cell can be assumed to be always inactive. Even after updating the cell state, its previous state is considered for updating the state of other cells. The cell information of all cells should be updated simultatiously.
#
#  Write an algorithm to output the state of the cells after the given number of days.
#
# Input
#     The input to the function consists of two arguments:
#     states, a list of integers representing the current state of cells.
#     days, an integer representing the number of days.
#
# Output
#     Return a list of integers representing the state of the cells after the given number of days.
#
# Note:
#     The elements of the list states contains 0s and 1st only.

def aactive(arr, days)
  new = []
  ln = arr.count - 1
  days.times do
    arr.each_with_index do |x, i|
      new[i] = case i
               when 0
                 arr[i + 1] == 0 ? 0 : 1
               when ln
                 arr[i - 1] == 0 ? 0 : 1
               else
                 arr[i - 1] == arr[i + 1] ? 0 : 1
               end
    end
    arr = new.dup
  end
  arr
end

# test 1 =>  output [0, 1, 1, 1]
#ss = [1, 0, 1, 1] # 2 days
#p aactive(ss, 2)

# test 2 => output [1, 0, 1, 0, 0, 0, 0, 0]
ss = [0, 1, 0, 1, 0, 1, 0, 1] # 3 days
p aactive(ss, 3) # arr , days
