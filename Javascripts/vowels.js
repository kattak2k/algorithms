
function vowels(str) {
    const matches = str.match(/[aeiou]/gi);
    return matches ? matches.length : 0;
  }

  vowels("this is my code")


/*
'eeeeriia'.match(/e/gi)
(4) ["e", "e", "e", "e"]

'eeeeriia'.match(/[aeiou]/gi).length
7

*/