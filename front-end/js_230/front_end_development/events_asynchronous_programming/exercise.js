// reverse string

let string = "hello"; // olleh

function reverseString(str) {
  if (str === '') return '';
  return reverseString(str.substring(1)) + str[0];
}

console.log(reverseString(string));
