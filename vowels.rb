def vowels(str)
   vowels = ['a','e','i','o','u'] 
   vhash = {}
   vowels.each do |x|
    vhash[str.scan(/#{x}/).length] = x
   end

   p "total vowels count: #{str.scan(/[aeiou]/).length}"

   p "count of repeated vowels: #{vhash}"

   p "vowel that repeaded most : #{vhash[vhash.keys.max]}"

end    


vowels("This belongs to me")

=begin
    output
    ------
    "total vowels count: 5"
    "count of repeated vowels: {0=>"u", 2=>"o", 1=>"i"}"
    "vowel that repeaded most : o"
=end