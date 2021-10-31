// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

const fibT = (n) => {
 const table = Array(n + 1).fill(0);
 table[1] = 1;

 for (let i = 0; i <= n ; i++ ){
   table[i+1] += table[i];
   table[i+2] += table[i];
   console.log(table)
 }
 return table[n];
}

console.log(fibT(8))

// [0, 1, 0, 0, 0, 0, 0, 0, 0] 
// [0, 1, 1, 1, 0, 0, 0, 0, 0]
// [0, 1, 1, 2, 1, 0, 0, 0, 0]
// [0, 1, 1, 2, 3, 2, 0, 0, 0]
// [0, 1, 1, 2, 3, 5, 3, 0, 0]
// [0, 1, 1, 2, 3, 5, 8, 5, 0]
// [0, 1, 1, 2, 3,5 , 8, 13, 8]
// [0, 1, 1, 2, 3, 5, 8, 13, 21, NaN]
// [0, 1, 1, 2, 3, 5, 8, 13, 21, NaN, NaN]


 // Solution 2

 const fib = (n,memo={}) => {
    if (n in memo) return memo[n];
    if (n <= 2) return 1;
   
    memo[n] = fib(n-1,memo) + fib(n-1,memo);
    return memo[n];
 }

 // O(2n)  = O(n) space & time