
# check te equality of 2 strings
# str1 = "anagram"  , sr2 = "nagaram"

def equality(str1, str2)
    # convert the tring into array
    arr1 = str1.split("")
    arr2 = str2.split("")

    # sort the arrays or we can also join
    str1 = arr1.sort.join()
    str2 = arr2.sort.join()

    #check the equality
    str1 == str2 ? true : false
end


# test1
#p equality("anagram","nagaram" )  #=> true

# test2
p equality("rat","car" )  #=> false
