
//Solution 1
// O(2^n+m)time  O(n+m) space

const gridtraveller = (m,n) => {
    console.log(m , n);
    if (m === 1 && n === 1 ) return 1;
    if (m === 0 || n === 0 ) return 0;
    
    return gridtraveller(m-1,n) + gridtraveller(m, n-1)
}

//console.log(gridtraveller(2,3))
//gridtraveller(3,3)
//gridtraveller(18,18)



//Solution 2 (memomization)
// O(m+n) time && O(n+m) space
const gridtravellerMemo = (m,n, memo={}) => {
    const key = m + ',' + n;
    if (key in memo) return memo[key];

    if (m === 1 && n === 1 ) return 1;
    if (m === 0 || n === 0 ) return 0;
    
    memo[key] = gridtravellerMemo(m-1,n,memo) + gridtravellerMemo(m, n-1,memo);
    console.log(memo)
    return memo[key];
}

//gridtravellerMemo(18,18)

console.log(gridtravellerMemo(4,3))