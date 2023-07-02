function makeList() {
  let todos = [];
  return function(todo) {
    if (todo === undefined && todos.length === 0) {
      console.log( "The list is empty.")
      return;
    }

    if (todo === undefined) {
      todos.forEach(todo => console.log(todo));
      return;
    }

    if (todos.includes(todo)) {
      todos.splice(todos.indexOf(todo), 1);
      console.log(`${todo} removed!`);
      return;
    } else {
      todos.push(todo);
      console.log(`${todo} added!`);
      return;
    }
  }
}

let list = makeList();
list();
// The list is empty.
list('make breakfast');
// make breakfast added!
list('read book');
// read book added!
list();
// make breakfast
// read book
list('make breakfast');
// make breakfast removed!
list();
// read book
