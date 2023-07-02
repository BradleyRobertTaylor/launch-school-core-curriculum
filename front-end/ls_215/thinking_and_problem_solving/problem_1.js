// Problem Description
// Write a program that cleans up user-entered phone numbers so that they can be sent
// as SMS messages. Other than digits, the number may also contain special character
// such as spaces, dash, dot, and parentheses that should be ignored.
//
// The rules are as follows:
//
// If the phone number is less than 10 digits, assume that it is a bad number.
// If the phone number is 10 digits, assume that it is good.
// If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits.
// If the phone number is 11 digits and the first number is not 1, then it is a bad number.
// If the phone number is more than 11 digits, assume that it is a bad number.
// For bad numbers, just a return a string of 10 0s.
//
// Understand the Problem:
//
// - Input:
//   - string
//   - user-entered phone number
// - Output:
//   - string
//   - "cleaned up" phone number
//   - if input is bad then return string of 10 0s
// - Rules:
//   - if the phone number is less than 10 digits, assume that it is a bad number.
//   - if the phone number is 10 digits, assume that it is good.
//   - if the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits.
//   - if the phone number is 11 digits and the first number is not 1, then it is a bad number.
//   - if the phone number is more than 11 digits, assume that it is a bad number.
//   - for bad numbers, just a return a string of 10 0s.
//   - invalid characters are anything but spaces, dashes, dots, and parentheses
//
// Examples:
//  console.log(cleanPhoneNumber('43254')); // '0000000000'
//  console.log(cleanPhoneNumber('012.345-6789')); '0123456789'
//  console.log(cleanPhoneNumber('1-012 345 (6789)'));  '0123456789'
//  console.log(cleanPhoneNumber('2-012 345 (6789)')); '0000000000'
//  console.log(cleanPhoneNumber('39485768392058')); '0000000000'
//
// Data Structure & Algotithm:
//  - return '0000000000' if the number contains anything but valid characters
//  - create variable and set it to input string with spaces, dashes, dots, and
//    parentheses removed
//  - if cleaned up string is 11 digits and the first number is 1 use the last 10
//    digits as the output
//  - if cleaned up string is 11 digits and the first number is not 1 return '0000000000'
//  - if cleaned up strings length is less than 10 or greater than 10 return '0000000000'
//  - return cleanStr

function cleanPhoneNumber(phoneNumber) {
  const validChars = /^[0-9\.\-\(\) ]+$/g
  const INVALID = '0'.repeat(10);
  if (!phoneNumber.match(validChars)) {
    return INVALID;
  }

  let cleanedNumber = phoneNumber.replace(/[^0-9]/g, '');

  if (cleanedNumber.length === 11 && cleanedNumber[0] === '1') {
    cleanedNumber = cleanedNumber.slice(1);
    return cleanedNumber;
  }

  if (cleanedNumber.length !== 10) {
    return INVALID;
  }

  return cleanedNumber;
}

console.log(cleanPhoneNumber('4a3254')); // '0000000000'
console.log(cleanPhoneNumber('012.345-6789')); // '0123456789'
console.log(cleanPhoneNumber('1-012 345 (6789)')); // '0123456789'
console.log(cleanPhoneNumber('2-012 345 (6789)')); // '0000000000'
console.log(cleanPhoneNumber('39485768392058')); // '0000000000'

