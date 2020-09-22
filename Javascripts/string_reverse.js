
// debug syntax  -> node inspect string_reverse.js
 
// solution 1
function reverse(str) {
    let flipped = '';

    for (let x of str){
        flipped = x + flipped;
    }

    return flipped;
}

// ruby
//'hello'.split('').reverse_each{|x| g << x}

//solution 2
function reverse(str) {
  return str.split('').reverse().join('');
}

//solution 3
function reverse(str) {
    return str.split('').reduce((flipped, x) => x + flipped,'');
}