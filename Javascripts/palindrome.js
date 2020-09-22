// solution 1
function palindrome(str) {
    const flip = str.split('').reverse().join('');
    return str === flip;
  }

// solution 2 = i is index of the value
function palindrome(str) {
    return str.split('').every((val, i) => {
        return val === str[str.length - i - 1];
    });
  }
