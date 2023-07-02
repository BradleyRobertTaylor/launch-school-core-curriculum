// Problem Description
//
// A collection of spelling blocks has two letters per block, as shown in this
// list:
//
// B:O   X:K   D:Q   C:P   N:A
// G:T   R:E   F:S   J:W   H:U
// V:I   L:Y   Z:M
//
// This limits the words you can spell with the blocks to only those words that
// do not use both letters from any given block. You can also only use each block
// once.
//
// Write a function that takes a word string as an argument, and returns true if
// the word can be spelled using the set of blocks, or false otherwise. You can
// consider the letters to be case-insensitive when you apply the rules.
//
// Examples:
//
// isBlockWord('BATCH');      // true
// isBlockWord('BUTCH');      // false
// isBlockWord('jest');       // true
//
// Understand the Problem:
// - Input:
//  - word string
//  - uppercase or lowercase letters
// - Output:
//  - boolean true or false
//  - true if the word can be spelled using set of blocks and false othewise
// - Rules:
//  - each block has two letters
//  - each block can only be used once
//  - if the input string has more two letters that are the same that string is
//    invalid
//  - letters are case-insensitive
//
// Examples:
//
// isBlockWord('BATCH');      // true
// isBlockWord('BUTCH');      // false
// isBlockWord('jest');       // true
//
// Data Structures:
// - Input: string
// - Intermed:
//  - array to represent blocks ['BO', 'XK', 'DQ', 'CP', 'NA',
//                               'GT', 'RE', 'FS', 'JW', 'HU',
//                               'VI', 'LY', 'ZM']
//  - iterate through string
// - Output: true or false
//
// Algorithm:
// - create variable blocks and set it to the array of blocks
// - iterate through string
//  - if the character is not in the blocks array
//    - return false
//  - iterate through the blocks
//    - if character is found
//      - remove that element from the blocks
// - return true if a character is found on every iteration

function isBlockWord(string) {
  let blocks = [ 'BO', 'XK', 'DQ', 'CP', 'NA',
                 'GT', 'RE', 'FS', 'JW', 'HU',
                 'VI', 'LY', 'ZM' ];

  string = string.toUpperCase();

  for (let i = 0; i < string.length; i += 1) {
    if (!blocks.some(block => block.includes(string[i]))) {
      return false;
    }

    for (let blockIdx = 0; blockIdx < blocks.length; blockIdx += 1) {
      if (blocks[blockIdx].includes(string[i])) {
        blocks.splice(blockIdx, 1);
      }
    }

  }


  return true;
}

console.log(isBlockWord('BATCH'));      // true
console.log(isBlockWord('BUTCH'));      // false
console.log(isBlockWord('jest'));       // true
