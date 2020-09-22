//Math.sign(n); returns -1 is value is negative , else returns +1
// parseInt converts the string to Integer

function reverseInt(n) {
    const reversed = n
      .toString()
      .split('')
      .reverse()
      .join('');
  
    return parseInt(reversed) * Math.sign(n);
  }


 //reverseInt(-15) == -51

 // reverseInt(21) == 12
