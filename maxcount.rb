#count the max chars in string

def max(v) 

    dk = v.split('').group_by{|x| v.count(x)}
    # {1=>["h", "o"], 3=>["e", "e", "e"], 2=>["l", "l"]}
    dk[dk.keys.max]
    #["e", "e", "e"]
    dk[dk.keys.max].uniq!
    #["e"]
    dk[dk.keys.max][0]
    #"e"

end    


max("helloee")