function flattenAndUnique(array) {
  if (array.length === 0) return array;

  const tempArr = [...array[1]];
  array = [...array[0]];

  tempArr.forEach((tempValue) => {
    if (array.every(arrayValue => tempValue != arrayValue)) {
      array.push(tempValue);
    }
  });

  console.log(array);
}

// flattenAndUnique([]); // []
flattenAndUnique([[1, 2, 3], ['3', 4, 5, 'a']]); // [1, 2, 3, 4, 5, 'a']
