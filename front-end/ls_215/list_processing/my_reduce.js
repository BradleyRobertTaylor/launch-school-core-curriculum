function myReduce(array, func, initial) {
  let result;
  let idx;

  if (initial === undefined) {
    result = array[0];
    idx = 1;
  } else {
    result = initial;
    idx = 0;
  }

  for (let i = idx; i < array.length; i += 1) {
    result = func(result, array[i]);
  }

  return result;
}

let smallest = (result, value) => (result <= value ? result : value);
let sum = (result, value) => result + value;

myReduce([5, 12, 15, 1, 6], smallest);           // 1
myReduce([5, 12, 15, 1, 6], sum);            // 49

function longestWord(words) {
  return myReduce(words, longest);
}

function longest(result, currentWord) {
  return currentWord.length >= result.length ? currentWord : result;
}

longestWord(['abc', 'launch', 'targets', '']);      // "targets"
