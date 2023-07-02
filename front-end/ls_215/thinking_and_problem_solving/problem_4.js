/*

You are given a list of numbers in a "short-hand" range where only the significant
part of the next number is written because we know the numbers are always increasing
(ex. "1, 3, 7, 2, 4, 1" represents [1, 3, 7, 12, 14, 21]). Some people use different
separators for their ranges (ex. "1-3, 1-2", "1:3, 1:2", "1..3, 1..2" represent the
same numbers [1, 2, 3, 11, 12]). Range limits are always inclusive.

Your job is to return a list of complete numbers.

The possible separators are: ["-", ":", ".."]

"1, 3, 7, 2, 4, 1" --> 1, 3, 7, 12, 14, 21
"1-3, 1-2" --> 1, 2, 3, 11, 12
"1:5:2" --> 1, 2, 3, 4, 5, 6, ... 12
"104-2" --> 104, 105, ... 112
"104-02" --> 104, 105, ... 202
"545, 64:11" --> 545, 564, 565, .. 611

Problem:
  - Input: "short-hand" range (string consisting of only the significant part of
    the next number, separators, and white space)
  - Output: range expanded with included insignificant parts of the numbers all separated by commas
  - Requirements
    - different separators can be used "-", ":", ".."
    - when separators are used the range is inclusive
    - when numbers are separated with commas the output will skip the numbers between the two

Examples:

"1, 3, 7, 2, 4, 1" --> 1, 3, 7, 12, 14, 21
"1-3, 1-2" --> 1, 2, 3, 11, 12              // [1, 2, 3, 1, 2] --> [1, 2, 3, 11, 12]
"1:5:2" --> 1, 2, 3, 4, 5, 6, ... 12        // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
"104-2" --> 104, 105, ... 112                
"104-02" --> 104, 105, ... 202              
"545, 64:11" --> 545, 564, 565, .. 611      // [545, 564, 565, ..., 611]

Data Structures:
  - Input: string
  - Intermed: array
  - Output: string

Algorithm:
  - create rangeResult variable and initalize to empty array
  - create range variable (rangeElements) and assign it to split input string up by commas followed by spaces
  - iterate through rangeElements
    - if the range element is a number
      - use nextNumber function to get the next number and push that to rangeResult
    - else the element is a range (includes one of the range separators)
      - use the expandRange function to expand that range into an array of numbers and push those numbers
        to rangeResult
  - return rangeResult
  
*/

function outputRange(rangeString) {
  let rangeResult = [];
  let rangeElements = rangeString.split(', ');

  rangeElements.forEach(rangeElement => {
    const lastRangeNum = rangeResult[rangeResult.length - 1] || 0;

    if (isOnlyNumber(rangeElement)) {
      rangeResult.push(nextNumber(rangeElement, lastRangeNum));
    } else {
      expandRange(rangeElement, lastRangeNum).forEach(num => {
        rangeResult.push(Number(num));
      });
    }
  });

  return rangeResult.join(', ');
}

function isOnlyNumber(string) {
  return string.match(/^\d+$/g);
}

function expandRange(range, lastRangeNum) {
  let expandedRange = [];
  let rangeElements = range.split(/[-:.]\.?/);
  let rangeStart = nextNumber(rangeElements[0], lastRangeNum);

  for (let i = 0; i < rangeElements.length - 1; i += 1) {
  const lastNum = nextNumber(rangeElements[i + 1], expandedRange[expandedRange.length - 1] || rangeStart);
    for (let count = expandedRange[expandedRange.length - 1] || rangeStart; count <= lastNum; count += 1) {
      expandedRange.push(count);
    }
  }
  
  return expandedRange;
}

function nextNumber(num, lastRangeNum) {
  let count = Number(lastRangeNum);

  do {
    count += 1;
  } while (!String(count).endsWith(String(num)));

  return count;
}

console.log(outputRange("1, 3, 7, 2, 4, 1")); // --> 1, 3, 7, 12, 14, 21
console.log(outputRange("1-3, 1-2")); // --> 1, 2, 3, 11, 12
console.log(outputRange("1:5:2")); // --> 1, 2, 3, 4, 5, 6, ... 12
console.log(outputRange("104-2")); // --> 104, 105, ... 112
console.log(outputRange("104-02")); // --> 104, 105, ... 202
console.log(outputRange("545, 64:11")); // --> 545, 564, 565, .. 611
