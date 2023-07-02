// Problem 4 - 12

let language = 'JavaScript';
let idx = language.indexOf('S');
let charCode = language.charCodeAt(idx);

console.log(idx);                             // 4
console.log(charCode);                        // 83
console.log(String.fromCharCode(charCode));   // 'S'
console.log(language.lastIndexOf('a'));       // 3

let a = 'a';
let b = 'b';

console.log(a > b);                           // false
b = 'B';
console.log(a > b);                           // true

console.log(language.slice(1, 4));            // 'ava'
console.log(language.slice(2, 4));            // 'va'

console.log(language.substring(1, 4));        // 'ava'
console.log(language.substring(2, 4));        // 'va'

console.log(language.slice(1, -1));           // 'avaScrip'
console.log(language.slice(2, -1));           // 'vaScrip'

// substring treats negative arguments as 0
console.log(language.substring(1, -1));           // 'J'
console.log(language.substring(2, -1));           // 'Ja'
