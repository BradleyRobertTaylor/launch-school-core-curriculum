// Problem Description
// The Luhn formula is a simple checksum formula used to validate a variety of identification
// numbers, such as credit card numbers and Canadian Social Insurance Numbers.
//
// The formula verifies a number against its included check digit, which is usually
// appended to a partial number to generate the full number. This number must pass
// the following test:
//
// Counting from the rightmost digit and moving left, double the value of every second digit
// For any digit that thus become 10 or more, subtract 9 from the result
//   - 1111 becomes 2121
//   - 8763 becomes 7733 (from 2 x 6 = 12 -> 12 - 9 = 3 and 2 x 8 = 16 -> 16 - 9 = 7)
//
// Add all these digits together
//   - 1111 becomes 2121 sums as 2 + 1 + 2 + 1 to give a checksum of 6
//   - 8763 becomes 7733, and 7 + 7 + 3 + 3 is 20
//
// If the total (the checksum) ends in 0 (put another way, if the total modulo 10
// is congruent to 0), then the number is valid according to the Luhn Formula;
// else it is not valid. Thus, 1111 is not valid (as shown above, it comes out
// to 6), while 8763 is valid (as shown above, it comes out to 20).
//
// Write a program that, given a number in string format, check if it is valid per
// the Luhn formula. This should treat, for example, "2323 2005 7766 3554" as
// valid. You can ignore all non-numeric characters in the input string.
//
// Understand the Problem:
// - Input:
//  - number in string format
// - Output:
//  - boolean true if input satisfies checksum formula or false otherwise
//- Rules:
//  - Luhn formula
//    - count from the rightmost digit and move left
//    - double the value of every second digit and subtract 9 for any digit that becomes 10
//      or more
//      - ex. 1111 becomes 2121 and 8763 becomes 7733
//    - add all hese digits together
//    - if the total ends in 0 (n % 10 === 0) then return true
//
// Examples:
//
// console.log(luhnFormula(1111)); // 2121
// console.log(luhnFormula(8763)); // 7733 (from 2 x 6 = 12 -> 12 - 9 = 3 and 2 x 8 = 16 -> 16 - 9 = 7)
// console.log(luhnFormula(1111)); // 2121 sums as 2 + 1 + 2 + 1 to give a checksum of 6
// console.log(luhnFormula(8763)); // 7733, and 7 + 7 + 3 + 3 is 20
//
// Data Structures:
// - Input: string of digits
// - Intermed: array
// - Output: boolean true or false
//
// Algorithm:
//  - create variable digits and set it to input string cleaned of anything but digit
//    characters and converted to numbers in reverse
//  - iterate through digits (map)
//    - if digit % 2 !== 0
//      - if digit * 2 >= 10
//        - return digit * 2 - 9
//      - else
//        - return digit * 2
//    - else
//      - return digit
//  - sum digits
//  - if the total ends in 0 (n % 10 === 0) then return true

function luhnFormula(digits) {
  checksum = digits.replace(/[^0-9]/g, '').split('').reverse()
    .map((digit, index) => {
      digit = Number(digit);
      if (index % 2 !== 0) {
        digit *= 2;

        if (digit >= 10) {
          digit -= 9;
        }

        return digit;
      } else {
        return digit;
      }
    })
    .reduce((sum, currDigit) => sum + currDigit);

  return checksum % 10 === 0;
}

console.log(luhnFormula('1111')); // false
console.log(luhnFormula('8763')); // true
console.log(luhnFormula('2323 2005 7766 3554')); // true
