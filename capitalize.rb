def capitalize(str) 
    str.split(' ').map(&:capitalize).join(" ")
end    

capitalize('a sdf sdfsdf')