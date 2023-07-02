function myOwnEvery(array, func) {
  array.forEach((element) => {
    if (!func(element)) return false;
  });

  return true;
}

let isAString = value => typeof value === 'string';
myOwnEvery(['a', 'a234', '1abc'], isAString);       // true

function areAllNumbers(array) {
  myOwnEvery(array, isANumber);
}

function isANumber(value) {
  return typeof value === 'number' && !Number.isNaN(value);
}

areAllNumbers([1, 5, 6, 7, '1']);             // false
areAllNumbers([1, 5, 6, 7, 1]);               // true
areAllNumbers([1, 5, 6, 7, NaN]);             // false
