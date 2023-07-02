document.addEventListener("DOMContentLoaded", () => {
  let todoItems = [
    { id: 1, title: "Homework" },
    { id: 2, title: "Shopping" },
    { id: 3, title: "Calling Mom" },
    { id: 4, title: "Coffee with John " },
  ];

  function createTodoElement({ id, title }) {
    let newLi = document.createElement("li");
    newLi.dataset.id = id;
    newLi.innerHTML = `${title}`;
    return newLi;
  }

  const contextMenu = document.querySelector(".context-menu");
  function showContextMenu(event) {
    event.preventDefault();
    currentItem = event.target;
    const rect = contextMenu.getBoundingClientRect();
    const x = event.clientX - rect.left;
    const y = event.clientY - rect.top;

    contextMenu.style.top = `${y}px`;
    contextMenu.style.left = `${x}px`;
    contextMenu.style.display = "block";

    document.addEventListener("click", (event) => {
      if (!contextMenu.contains(event.target)) {
        contextMenu.style.display = "none";
      }
    });
  }

  const todoList = document.querySelector(".todo-list");
  todoItems.forEach((todo) => {
    todo = createTodoElement(todo);
    todoList.appendChild(todo);
    todo.addEventListener("contextmenu", showContextMenu);
  });

  const deleteButtons = document.querySelectorAll(".delete-button");
  const deleteMenu = document.querySelector(".delete-menu");

  let currentItem;
  deleteButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      contextMenu.style.display = "none";
      deleteMenu.style.display = "block";
    });
  });

  const yesButton = document.querySelector(".yes-button");
  const noButton = document.querySelector(".no-button");

  yesButton.addEventListener("click", (e) => {
    const todoItem = currentItem;
    todoItems = todoItems.filter(
      ({ id }) => String(id) !== todoItem.dataset.id
    );
    todoItem.remove();
    deleteMenu.style.display = "none";
  });

  noButton.addEventListener("click", () => {
    deleteMenu.style.display = "none";
  });
});
