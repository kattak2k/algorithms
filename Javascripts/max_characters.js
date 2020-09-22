
function maxChar(str) {
    const charMap = {};
    let max = 0;
    let maxChar = '';

    for (let x of str) {
        if (charMap[x]) {
            charMap[x]++;
        } else {
            charMap[x] = 1;
        }
    }
    //result : { h: 1, e: 3, l: 2, o: 1 }

    // get the highest count
    for (i in charMap){
       if (charMap[i] > max) {
        max = charMap[i];  //3
        maxChar = i;      //e
       }
    }

    return maxChar;
}


console.log(maxChar("helloee"));