class Todo {
  static #idGenerator = (function() {
    let id = 0;
    return function() {
      id++;
      return id;
    };
  })();

  constructor(title, month, year, description, completed=false) {
    this.id = Todo.#idGenerator();
    this.title = title;
    this.completed = completed;
    this.month = month;
    this.year = year;
    this.description = description;
  }

  isWithinMonthYear() {
    return this.month === month && this.year === year;
  }
}

const todoList = (() => {
  let collection = [];

  function fetchTodo(todoId) {
    return collection.filter(todo => todo.id === todoId)[0];
  }

  function copyTodo(todo) {
    return {...todo};
  }

  return {
    init(todos) {
      todos.forEach(({title, month, year, description, completed}) => {
        collection.push(new Todo(title, month, year, description, completed));
      });
    },

    addTodo(todo) {
      const {title, month, year, description, completed} = todo;
      todo = new Todo(title, month, year, description, completed);
      collection.push(todo);
    },

    deleteTodo(todoId) {
      const todo = fetchTodo(todoId);
      const index = collection.indexOf(todo);
      collection.splice(index, 1);
    },

    updateTodo(todoId, updatesObj) {
      const todo = fetchTodo(todoId);
      if (!todo) return false;

      for (const prop in updatesObj) {
        if (prop === 'id' || !(prop in todo)) continue;

        todo[prop] = updatesObj[prop];
      }
    },

    viewTodo(todoId) {
      const todo = fetchTodo(todoId);

      return copyTodo(todo);
    },

    allTodos() {
      return collection.map(copyTodo);
    },
  };
})();

const todoManager = {
  list: todoList,
  getAllTodos() {
    return this.list.allTodos();
  },

  allCompletedTodos() {
    return this.list.allTodos().filter(({completed}) => completed);
  },

  allTodosFiltered(filterMonth, filterYear) {
    return this.list.allTodos().filter(({month, year}) => {
      return month === filterMonth && year === filterYear;
    });
  },

  allCompletedTodosFiltered(filterMonth, filterYear) {
    return this.list.allTodos().filter(({month, year, completed}) => {
      return month === filterMonth && year === filterYear && completed;
    });
  },
};

let todoData1 = {
  title: 'Buy Milk',
  month: '1',
  year: '2017',
  description: 'Milk for baby',
};

let todoData2 = {
  title: 'Buy Apples',
  month: '',
  year: '2017',
  description: 'An apple a day keeps the doctor away',
};

let todoData3 = {
  title: 'Buy chocolate',
  month: '1',
  year: '',
  description: 'For the cheat day',
};

let todoData4 = {
  title: 'Buy Veggies',
  month: '',
  year: '',
  description: 'For the daily fiber needs',
};

let todoSet = [todoData1, todoData2, todoData3, todoData4];
todoList.init(todoSet);
console.log(todoManager.getAllTodos()); // [{id: 1, title: 'Buy Milk', ...}, {id: 2, title: 'Buy Apples' ...}
                                        //  {id: 3, title: 'Buy chocolate', ...}, {id: 4, title: 'Buy Veggies', ...}]

todoList.addTodo({title: 'Buy water', month: '2', year: '2023', description: 'For living'}); 
console.log(todoManager.getAllTodos()); // new todo added {id: 5, title: 'Buy water', completed: false, month: '2', year: '2023'}

todoList.deleteTodo(2);
console.log(todoManager.getAllTodos()); // todo {id: 2, title: 'Buy Apples' ...} removed from collection

todoList.updateTodo(4, {completed: true});
todoList.updateTodo(1, {completed: true});
console.log(todoManager.getAllTodos()); // todo with id 4 and id 1 now completed
console.log(todoManager.allCompletedTodos());   // returns all completed todos (id 4 and id 1);

console.log(todoList.viewTodo(1));      // view copy of todo 1

let todo1 = todoList.viewTodo(1);
todo1.id = 56;                          // attempt to modify a todo
console.log(todoList.viewTodo(1));      // still returns the same unmodified todo

console.log(todoManager.allTodosFiltered('', '')); // returns only 'Buy Veggies' todo
console.log(todoManager.allTodosFiltered('1', '')); // returns only 'Buy chocolate' todo

todoList.addTodo({title: 'Buy grapes', month: '3', year: '2023', description: 'For health'});
todoList.addTodo({title: 'Buy grapes', month: '3', year: '2023', description: 'For health', completed: true});

console.log(todoManager.allCompletedTodosFiltered('3', '2023')); // only returns 'Buy grapes' todo that's completed





