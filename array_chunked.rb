def chunk(arr,l)
    chunked = []

   arr.each do |x|
     return chunked if !arr
     chunked << arr.shift(l) 
   end

   p chunked << arr
end    


chunk([1,2,3,4,5,6,7],2)

=begin
    chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
    chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
    chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
=end
