// Find the matching element in an array and exclude


function filteredArray(arr, elem) {
    let newArr = [];
    // change code below this line
    let len = arr.length;
    for (let i = 0; i < len; i++) {
        //check if the element in present in 2D array 
        if (arr[i].indexOf(elem) < 0) {
            // push the array into new array if the value doesn't exists 
            newArr.push(arr[i]);
        };
    };

    // change code above this line
    return newArr;
}

// change code here to test different cases:
console.log(filteredArray([
    [3, 2, 3],
    [1, 6, 3],
    [3, 13, 26],
    [19, 3, 9]
], 3));
console.log(filteredArray([
    [10, 8, 3],
    [14, 6, 23],
    [3, 18, 6]
], 18));
//should return [ [10, 8, 3], [14, 6, 23] ]
console.log(filteredArray([
    ["trumpets", 2],
    ["flutes", 4],
    ["saxophones", 2]
], 2));
//should return [ ["flutes", 4] ]
console.log(filteredArray([
    ["amy", "beth", "sam"],
    ["dave", "sean", "peter"]
], "peter"));
//should return [ ["amy", "beth", "sam"] ]
console.log(filteredArray([
    [3, 2, 3],
    [1, 6, 3],
    [3, 13, 26],
    [19, 3, 9]
], 3));
//should return [ ]