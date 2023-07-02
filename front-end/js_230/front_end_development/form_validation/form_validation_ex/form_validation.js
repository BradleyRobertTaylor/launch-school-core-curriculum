document.addEventListener('DOMContentLoaded', () => {
  const inputs = document.querySelectorAll('input');
  const form = document.querySelector('form');
  const mainErrorMessage = document.querySelector('form > div');
  const firstNameInput = document.querySelector('#first_name');
  const lastNameInput = document.querySelector('#last_name');
  const phoneNumInput = document.querySelector('#phone_number');
  const creditCardInputs = document.querySelectorAll('.flex input');
  const creditCardError = document.querySelector('.cc_error');

  function showErrors() {
    inputs.forEach((input) => {
      let errorMessage = input.nextElementSibling;

      if (input.name === 'credit_card') {
        errorMessage = creditCardError;
      }

      if (!input.validity.valid) {
        errorMessage.innerText = ERROR_MESSAGE[input.name](input.value);
        input.classList.add('invalid_input');
      }
    });
  }

  function areAllInputsValid() {
    return [...inputs].every((input) => input.validity.valid);
  }

  const ERROR_MESSAGE = {
    first_name() {
      return 'First Name is a required field.';
    },

    last_name() {
      return 'Last Name is a required field.';
    },

    email(input) {
      if (!input) {
        return 'Email is a required field.';
      } else {
        return 'Please Enter a valid Email.';
      }
    },

    password(input) {
      if (!input) {
        return 'Password is a required field.';
      } else {
        return 'Password must be at least 10 characters long.';
      }
    },

    phone_number() {
      return 'Please Enter a valid Phone Number.';
    },

    credit_card() {
      return 'Please Enter a valid Credit Card.';
    },
  };

  [firstNameInput, lastNameInput].forEach((input) => {
    input.addEventListener('keypress', (event) => {
      if (/[^a-zA-Z'\s]/.test(event.key)) {
        event.preventDefault();
      }
    });
  });

  [phoneNumInput, ...creditCardInputs].forEach((input) => {
    input.addEventListener('keydown', (event) => {
      if (!/([0-9\-]|Backspace|Tab)/.test(event.key)) {
        event.preventDefault();
      }
    });
  });

  creditCardInputs.forEach((input) => {
    input.addEventListener('keyup', (event) => {
      if (input.id !== 'cc4') {
        const nextInput = input.nextElementSibling.nextElementSibling;
        if (input.value.length === 4) {
          nextInput.focus();
        }
      }
    });
  });

  inputs.forEach((input) => {
    input.addEventListener('focusin', (event) => {
      const currentInput = event.target;
      let errorMessage = currentInput.nextElementSibling;

      if (currentInput.name === 'credit_card') {
        errorMessage = creditCardError;
      }

      if (!currentInput.validity.valid) {
        currentInput.classList.remove('invalid_input');
        errorMessage.innerText = '';
      }
    });

    input.addEventListener('focusout', (event) => {
      const currentInput = event.target;
      let errorMessage = currentInput.nextElementSibling;

      if (currentInput.name === 'credit_card') {
        errorMessage = creditCardError;
      }

      if (!currentInput.validity.valid) {
        currentInput.classList.add('invalid_input');
        errorMessage.innerText = ERROR_MESSAGE[currentInput.name](
          currentInput.value
        );
      }

      if (areAllInputsValid() && mainErrorMessage.innerText !== '') {
        mainErrorMessage.innerText = '';
      }
    });
  });

  form.addEventListener('submit', (event) => {
    event.preventDefault();
    if (areAllInputsValid()) {
      const data = new FormData(form);
      let query = [];
      let creditCardNum = '';

      for (let pair of data) {
        if (pair[1] !== '') {
          if (pair[0] === 'credit_card') {
            creditCardNum += pair[1];
            continue;
          }

          pair = pair.map(encodeURIComponent);
          query.push(pair.join('='));
        }
      }

      if (creditCardNum !== '') {
        query.push('credit_card=' + creditCardNum);
      }

      document.querySelector('.form_data').innerText = query.join('&');
    } else {
      mainErrorMessage.innerText =
        'Form cannot be submitted until errors are corrected.';
      showErrors();
    }
  });
});
