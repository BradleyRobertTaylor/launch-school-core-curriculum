// function subtract(a, b) {
//   return a - b;
// }
//
// function makeSub() {
//   return function(a) {
//     return subtract(a, 5);
//   }
// }
//
// const sub5 = makeSub();
//
// sub5(10); // 5
// sub5(20); // 15

// ----------------------------------------------------------------------------

function subtract(a, b) {
  return a - b;
}

function makeSubN(n) {
  return function(a) {
    return subtract(a, n);
  }
}

const sub4 = makeSubN(4);
const sub7 = makeSubN(7);

sub4(10); // 6
sub4(20); // 16
sub7(10); // 3
sub7(20); // 13

