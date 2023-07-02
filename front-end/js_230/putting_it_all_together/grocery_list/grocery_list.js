class GroceryList {
  constructor() {
    this.list = document.querySelector('.grocery-list');
  }

  addItem(quantity, itemName) {
    const li = document.createElement('li');
    li.classList.add('grocery-item');
    li.textContent = `${quantity} ${itemName}`;
    this.list.append(li);
  }
}

document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('form');
  const groceryList = new GroceryList();

  function getValueOf(selector) {
    return document.querySelector(selector).value;
  }

  form.addEventListener('submit', e => {
    e.preventDefault();

    const itemName = getValueOf('#item-name');
    const quantity = getValueOf('#quantity') || '1';

    groceryList.addItem(quantity, itemName);
    form.reset();
  });
});