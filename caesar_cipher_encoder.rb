# frozen_string_literal: true

#
# rot13("SERR PBQR PNZC") should decode to FREE CODE CAMP
# rot13("SERR CVMMN!") should decode to FREE PIZZA!
# rot13("SERR YBIR?") should decode to FREE LOVE?
# rot13("GUR DHVPX OEBJA SBK WHZCF BIRE GUR YNML QBT.") should decode to THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG.

def rot13(str, shift_no)
  converted_str = ''.dup # using dup to rectify the frozen string error
  # shift the string by 13 characters
  encode = ('A'..'Z').to_a
  decode = encode.rotate(shift_no)

  # loop through each chars
  str.chars.each do |c|
    converted_str << (decode.include?(c) ? encode[decode.index(c)] : c)
  end

  converted_str
end

# p rot13('SERR PBQR PNZC', 13)

# p rot13('SERR CVMMN!', 13)
# p rot13('SERR YBIR?', 13)
p rot13('GUR DHVPX OEBJA SBK WHZCF BIRE GUR YNML QBT.', 13)
