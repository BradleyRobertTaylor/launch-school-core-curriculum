function isBalanced(string) {
  let parenString = string.replace(/[^()]/g, '');

  let parensCount = 0;
  for (let i = 0; i < parenString.length; i += 1) {
    if (parenString[i] === '(') {
      parensCount += 1;
    } else {
      parensCount -= 1;
    }

    if (parensCount < 0) return false;
  }

  return parensCount === 0;
}

console.log(isBalanced('What (is) this?'));        // true
console.log(isBalanced('What is) this?'));         // false
console.log(isBalanced('What (is this?'));         // false
console.log(isBalanced('((What) (is this))?'));    // true
console.log(isBalanced('((What)) (is this))?'));   // false
console.log(isBalanced('Hey!'));                   // true
console.log(isBalanced(')Hey!('));                 // false
console.log(isBalanced('What ((is))) up('));       // false
