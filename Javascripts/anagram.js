function anagrams(stringA, stringB) {
    let ar1 = [];
    let ar2 = [];
    ar1 = stringA.split('');
    ar2 = stringB.split('');
    
    return ar1.sort().join('') == ar2.sort().join('');
       
   }

   let output = anagrams('rail safety','fairy tales')

   console.log(output);