function makeCounterLogger(start) {
  return function(end) {
    let i;

    if (start < end) {
      for (i = start; i <= end; i += 1) {
        console.log(i);
      }
    } else {
      for (i = start; i >= end; i -= 1) {
        console.log(i);
      }
    }
  }
}

let countlog = makeCounterLogger(5);
countlog(8);

countlog(2);




