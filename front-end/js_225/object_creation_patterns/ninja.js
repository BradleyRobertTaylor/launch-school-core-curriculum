// let ninjaA;
// let ninjaB;
// function Ninja() {
//   this.swung = false;
// }
//
// ninjaA = new Ninja();
// ninjaB = new Ninja();
//
// // Add a swing method to the Ninja prototype which
// // returns the calling object and modifies swung
//
// Ninja.prototype.swing = function () {
//   this.swung = true;
//   return this;
// };
//
// console.log(ninjaA.swing().swung);      // must log true
// console.log(ninjaB.swing().swung);      // must log true

let ninjaA = (function() {
  function Ninja(){};
  return new Ninja();
})();

// create a ninjaB object

let ninjaB = Object.create(Object.getPrototypeOf(ninjaA));

console.log(ninjaB.constructor === ninjaA.constructor);    // should log true
