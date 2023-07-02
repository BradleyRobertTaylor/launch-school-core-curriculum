function makeMultipleLister(multiple) {
  return function() {
    for (let count = multiple; count < 100; count += multiple) {
      console.log(count);
    }
  }
}

let lister = makeMultipleLister(13);
lister();
// 13
// 26
// 39
// 52
// 65
// 78
// 91
