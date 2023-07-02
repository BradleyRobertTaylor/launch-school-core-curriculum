function anagram(word, list) {
  return list.filter(text => sortWord(text) === sortWord(word));
}

function sortWord(word) {
  return word.split('').sort().join('');
}

console.log(anagram('listen', ['enlists', 'google', 'inlets', 'banana']));  // [ "inlets" ]
console.log(anagram('listen', ['enlist', 'google', 'inlets', 'banana']));   // [ "enlist", "inlets" ]
