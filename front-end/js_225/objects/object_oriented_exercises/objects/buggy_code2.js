/*

const item = {
  name: 'Foo',
  description: 'Fusce consequat dui est, semper.',
  price: 50,
  quantity: 100,
  discount(percent) {
    const discount = this.price * percent / 100;
    this.price -= discount;

    return this.price;
  },
};

> item.discount(20)   // should return 40
= 40
> item.discount(50)   // should return 25
= 20
> item.discount(25)   // should return 37.5
= 15

*/
const item = {
  name: 'Foo',
  description: 'Fusce consequat dui est, semper.',
  price: 50,
  quantity: 100,
  discount(percent) {
    const discount = this.price * percent / 100;
    const discountedPrice = this.price - discount;

    return discountedPrice;
  },
};

console.log(item.discount(20)); // 40
console.log(item.discount(50)); // 25
console.log(item.discount(25)); // 37.5
