# frozen_string_literal: true

# get dressed in the morning before going to work
#     You have to get dressed in the morning before going to work. Unfortunately, you only accept a space separated list of numbers to indicate article of clothing to don.
#
# 1 = hat
# 2 = pants
# 3 = shirt
# 4 = shoes
# 5 = socks
# Rules:
#
# pants > socks > shoes
# shirt = hat
# You must put your socks on before your shoes.
# You must put your pants on before your shoes.
# You must put your shirt on before your hat.
# A hat is optional but all other articles of clothing are required.
# You must leave the house when receiving the number 6. You must leave the house after getting dressed.
# Any violation should output "fail" and stop immediately.
# Examples:
#
# Input: 5 1
# Output: socks, fail
# Input: 5 2 3 4 6
# Output: socks, pants, shirt, shoes, leave

class DressState
  attr_accessor :id

  def initialize(_state, _id = [])
    # call a relevant action
    @id = method(_state).call
  end

  private

  def shoes
    # socks and pants
    [5, 2]
  end

  def hat
    # pants, shirt, shoes, socks
    [2, 3, 4, 5]
  end

  def socks
    [5]
  end

  def pants
    [2]
  end

  def shirt
    [3]
  end

  def leave
    [2, 3, 4, 5]
  end
end

def dressup(ids)
  ref = []
  completed = []
  go_work = []

  # convert the string into array of integers
  task_ids = ids.delete(' ').split('').map(&:to_i)

  task_ids.each_with_index do |id, _i|

    # Append the completed tasks
    completed << id

    # get the prior tasks
    ref = DressState.new(duty[id])

    # check the current task in completed tasks list
    go_work << if (ref.id - completed).empty?
                 duty[id]
               else
                 :fail
              end

    # exit the loop on fail
    break if go_work[-1] == :fail
  end

  # compile the list together
  go_work.join(' ')
end

def duty
  {
    1 => :hat,
    2 => :pants,
    3 => :shirt,
    4 => :shoes,
    5 => :socks,
    6 => :leave
  }
end

# p dressup('4 1') # shoes and hat
p dressup('5 1') # socks and hat
# p dressup('5 2 3 4 6')

# p dressup('5 4 2 3 1 6') # shoes before pants
# p dressup('4 5 2 3 1 6') # shoes before socks
# p dressup('5 2 3 4 1 6') # all in
