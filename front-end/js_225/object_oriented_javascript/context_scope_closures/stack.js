function newStack() {
  const stack = [];

  return {
    push(value) {
      stack.push(value);
    },

    pop() {
      return stack.pop();
    },

    printStack() {
      stack.forEach(value => {
        console.log(value);
      });
    },
  }
}

let stack = newStack();

stack.push(0);
stack.push(1);
stack.push(2);
stack.push(3);
console.log(stack.pop()); // 3
console.log(stack.pop()); // 2
stack.printStack() // 0
                   // 1

