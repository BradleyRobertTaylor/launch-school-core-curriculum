class Animal {
  constructor(species) {
    this.species = species;
  }

  breathe() {
    return "I'm breathing";
  }

  move() {
    return "I'm walking";
  }
}

class Dolphin extends Animal {
  constructor(species, length) {
    super(species);
    this.length = length;
    this.swim = true;
  }

  move() {
    return "I'm swimming";
  }

  huntFish() {
    return `I'm hunting fish while ${super.breathe()}`;   // Making use of `breathe` in the superclass
  }
}

let cat = new Animal('Cat');
let dolphin = new Dolphin('Dolphin', "5 ft");

console.log(cat.move());            // "I'm walking"
console.log(dolphin.move());        // "I'm swimming"
console.log(cat.species);           // "Cat"
console.log(dolphin.species);       // "Dolphin"
console.log(cat.swim);              // undefined
console.log(dolphin.swim);          // true
console.log(dolphin.huntFish());    // I'm hunting fish while I'm breathing
