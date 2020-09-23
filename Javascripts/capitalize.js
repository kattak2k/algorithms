function capitalize(str){
  const words = [];

  for (let a of str.split(' ')){
      words.push( a[0].toUpperCase() + a.slice(1));
  }

  console.log( words.join(' '));

}

capitalize('this, is working well')