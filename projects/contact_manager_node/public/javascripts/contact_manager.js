class ContactManagerUI {
  constructor() {
    this.contactsSection = document.querySelector('.contacts');
    this.mainSection = document.querySelector('.main-section');
    this.formSection = document.querySelector('.form');
    this.searchBar = document.querySelector('#search-bar');
    this.fetchContacts();
    this.bindEvents();
  }

  bindEvents() {
    document
      .querySelector('.add-contact')
      .addEventListener('click', this.displayContactForm.bind(this));

    this.contactsSection.addEventListener(
      'click',
      this.contactSectionEvents.bind(this)
    );

    this.formSection.addEventListener(
      'click',
      this.formSectionEvents.bind(this)
    );

    this.searchBar.addEventListener('keyup', this.searchContacts.bind(this));
  }

  contactSectionEvents(event) {
    if (event.target.classList.contains('delete')) {
      let userConfirmed = confirm('Do you want to delete the contact');
      if (userConfirmed) {
        let id = event.target.dataset.id;
        fetch(`http://localhost:3000/api/contacts/${id}`, {
          method: 'DELETE',
        })
          .then((response) => console.log('Delete successful'))
          .catch((err) => console.log(err));

        this.renderContacts();
      }
    }

    if (event.target.classList.contains('add-contact')) {
      this.displayContactForm();
    }

    if (event.target.classList.contains('edit')) {
      this.displayEditForm(event);
    }
  }

  formSectionEvents(event) {
    if (event.target.classList.contains('cancel')) {
      this.cancelContactForm();
    }

    if (event.target.classList.contains('submit')) {
      let method = 'POST';

      if (
        event.target.closest('.contact-form').classList.contains('edit-form')
      ) {
        method = 'PUT';
      }

      this.submitContactForm(event, method);
    }
  }

  displayContactForm() {
    this.mainSection.classList.remove('active');
    let template = String(
      document.querySelector('#contact-form-template').innerHTML
    );
    let contactFormTemplate = Handlebars.compile(template);

    let contactFormDiv = document.createElement('div');
    contactFormDiv.classList.add('active', 'contact-form');
    contactFormDiv.innerHTML = contactFormTemplate({
      title: 'Add Contact',
      url: 'http://localhost:3000/api/contacts/',
    });

    this.formSection.append(contactFormDiv);
  }

  displayEditForm(event) {
    this.mainSection.classList.remove('active');
    let id = event.target.dataset.id;
    let contactCard = event.target.parentElement;
    let name = contactCard.querySelector('.contact-name').textContent;
    let phoneNumber = contactCard.querySelector(
      '.contact-phone-number'
    ).textContent;
    let email = contactCard.querySelector('.contact-email').textContent;

    let template = String(
      document.querySelector('#contact-form-template').innerHTML
    );
    let editFormTemplate = Handlebars.compile(template);

    let editFormDiv = document.createElement('div');
    editFormDiv.classList.add('active', 'contact-form', 'edit-form');
    editFormDiv.innerHTML = editFormTemplate({
      title: 'Edit Contact',
      url: `http://localhost:3000/api/contacts/${id}`,
      full_name: name,
      phone_number: phoneNumber,
      email: email,
    });

    this.formSection.append(editFormDiv);
  }

  cancelContactForm() {
    document.querySelector('.contact-form').remove();
    this.mainSection.classList.add('active');
  }

  displayNoContacts() {
    this.contactsSection.innerHTML = this.noContactsHTML;
  }

  renderContacts(contacts) {
    let template = String(
      document.querySelector('#contact-info-template').innerHTML
    );
    let contactCardsTemplate = Handlebars.compile(template);

    this.contactsSection.innerHTML = contactCardsTemplate({
      contacts: contacts,
    });
  }

  submitContactForm(event, method) {
    event.preventDefault();
    const form = event.target.parentElement;
    const formInputs = [...form.querySelectorAll('input')];
    formInputs.forEach((input) => {
      input.parentElement.previousElementSibling.classList.toggle(
        'error',
        !input.validity.valid
      );
      input.classList.toggle('error', !input.validity.valid);
    });

    if (formInputs.every((input) => input.validity.valid)) {
      let data = {};
      formInputs.forEach(({ id, value }) => (data[id] = value));
      let request = fetch(form.action, {
        method: method,
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
      });

      request
        .then((response) => {
          return response.json();
        })
        .then((json) => {
          console.log(json);
        })
        .catch((err) => {
          console.log('Error:' + err);
        });

      this.fetchContacts();
      this.cancelContactForm();
    }
  }

  async searchContacts(event) {
    const searchString = this.searchBar.value;
    await this.fetchContacts(searchString);

    if (this.contacts.length === 0) {
      this.renderNoSearchResults(searchString);
    } else {
      this.renderContacts(this.contacts);
    }
  }

  async fetchContacts(searchString) {
    let request = await fetch('http://localhost:3000/api/contacts');
    let response = await request.json();

    if (searchString) {
      response = response.filter(({ full_name }) =>
        full_name.startsWith(searchString)
      );
    }

    this.renderContacts(response);
    this.contacts = response;
  }

  renderNoSearchResults(searchString) {
    let template = String(
      document.querySelector('#no-result-template').innerHTML
    );
    let noResultTemplate = Handlebars.compile(template);
    this.contactsSection.innerHTML = noResultTemplate({ searchString });
  }
}

document.addEventListener('DOMContentLoaded', () => {
  const contactUI = new ContactManagerUI();
});
