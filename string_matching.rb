#
#  Naive String matching algorithm
# T = "ABCABABCDD"
# P = "BAB"
#
# LOGIC
#  lt = T.length
#  lp = P.length

def search_str(to, po)
  # final value
  s_val = []

  # convert into array
  t_arr = to.split('')
  p_arr = po.split('')

  # get the count of lookup array
  t_len = t_arr.count - 1
  p_len = p_arr.count - 1
  nxt_ctr = 0 # counter

  # loop at t array
  t_arr.each_with_index do |_v, i|
    # break if the counter reached the last element
    break if p_len == t_len

    # Compare the set of values in an array with the p array
    s_val << i if t_arr[nxt_ctr..p_len] == p_arr

    # Increment the next counter set
    nxt_ctr += 1
    p_len += 1
  end
  s_val
end

# test 1
# ss = search_str('ABCABABCDD', 'BAB')

# test 2
p search_str('00010000100010000001', '0001')
