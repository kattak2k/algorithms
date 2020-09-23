// solution 1
function chunk(array, size) {
    
    let total = 0;
    let i = 1;
    let ched = ted = [];

    total = Math.round(array.length / size + 1);
    
    while (i <= total){
        if (array.length !== 0){
            ched.push( array.splice(0, size) );
        };
     i++;    
    }

    //ted = ched.filter((el) => el.length !== 0);
    console.log(ched);  
}

// solution 2
function chunk2(array, size) {
   let ched = []
   let idx = 0;

   while (idx < array.length){
       ched.push(array.slice(idx, idx+size ));
       idx += size;
   }
  console.log(ched);
}    


chunk([1,2,3,4,5,6,7],4)
//chunk([1,2,3,4,5,6,7],3)
//chunk2([1,2,3,4,5,6,7],2)