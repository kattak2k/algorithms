// solution 1
function fizzBuzz(n) {
    let i = 1;
     while (i <= n) {
        if (i % 15 === 0) {
            console.log('fizzbuzz');
        } else if (i % 3 === 0 ){
             console.log('fizz');
         } else if (i % 5 === 0) {
             console.log('buzz');
         } else {
            console.log(i);
         }
         i++;
     }
   }

   // solution 2

   function fizzBuzz2(n) {

    for (let i=1; i <= n; i++){
        if (i % 15 === 0) {
            console.log('fizzbuzz');
        } else if (i % 3 === 0 ){
             console.log('fizz');
         } else if (i % 5 === 0) {
             console.log('buzz');
         } else {
            console.log(i);
         }
     }
   }


   fizzBuzz(15)
   console.log('--------------------')
   fizzBuzz2(15)