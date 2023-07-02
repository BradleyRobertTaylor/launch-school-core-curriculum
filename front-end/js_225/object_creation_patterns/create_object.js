function createObject(obj) {
  let tempFunc = function() {
  };

  tempFunc.prototype = obj;

  return new tempFunc();
}

let foo = {
  a: 1
};

let bar = createObject(foo);
console.log(foo.isPrototypeOf(bar));         // true
