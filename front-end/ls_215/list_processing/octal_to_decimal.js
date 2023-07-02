// function octalToDecimal(numberString) {
//   let numArray = numberString.split('').map(digitStr => Number(digitStr));
//   let power = numberString.length;
//   let octals = numArray.map(num => {
//     power -= 1;
//     return num * 8 ** power;
//   });
//
//   return octals.reduce((sum, num) => sum + num);
// }

// function octalToDecimal(numberString) {
//   let decimalParts = numberString.split('').map((digitChar, index) => {
//     return Number(digitChar) * Math.pow(8, numberString.length - index - 1);
//   });
//
//   return decimalParts.reduce((sum, number) => sum + number);
// }

function octalToDecimal(numberString) {
  return numberString.split('').reduce((sum, digitChar, index) => {
    return sum + Number(digitChar) * Math.pow(8, numberString.length - index - 1);
  }, 0);
}

octalToDecimal('1');           // 1
octalToDecimal('10');          // 8
octalToDecimal('130');         // 88
octalToDecimal('17');          // 15
octalToDecimal('2047');        // 1063
octalToDecimal('011');         // 9
