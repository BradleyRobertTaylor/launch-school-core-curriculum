let invoices = {
  unpaid: [],
  paid: [],
  add(name, amount) {
    this.unpaid.push({name, amount});
  },

  totalDue() {
    return this.unpaid
      .reduce((total, {amount}) => total + amount, 0)
      .toFixed(2);
  },

  totalPaid() {
    return this.paid
      .reduce((total, {amount}) => total + amount, 0)
      .toFixed(2);
  },

  payInvoice(comparator) {
    let newUnpaid = [];
    this.unpaid.forEach(client => {
      if (comparator === client.name) {
        this.paid.push(client);
      } else {
        newUnpaid.push(client);
      }
    });       

    this.unpaid = newUnpaid;
  },
};

invoices.add('Due North Development', 250);
invoices.add('Moonbeam Interactive', 187.5);
invoices.add('Slough Digital', 300);
invoices.payInvoice('Slough Digital');
invoices.payInvoice('Due North Development');
console.log(invoices.totalPaid());
console.log(invoices.totalDue());
