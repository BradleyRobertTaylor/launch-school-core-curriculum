document.addEventListener('DOMContentLoaded', () => {
  let form = document.querySelector('form');
  let input = document.querySelector('#guess');
  let guessButton = document.querySelectorAll('input')[1];
  let paragraph = document.querySelector('p');
  let newGameLink = document.querySelector('a');
  let answer;
  let guesses;

  function newGame() {
    answer = Math.floor(Math.random() * 100) + 1;
    guessButton.disabled = false;
    guesses = 0;
    paragraph.textContent = 'Guess a number from 1 to 100';
    input.value = '';
  }

  function notValidInteger(integer) {
    if (Number.isNaN(integer)) {
      return true;
    }

    if (integer > 100 || integer < 1) {
      return true;
    }

    return false;
  }

  form.addEventListener('submit', event => {
    event.preventDefault();

    let guess = parseInt(input.value, 10);
    let message;

    if (notValidInteger(guess)) {
      message = `That is not a valid number. Guess again.`
      input.value = '';

    } else {
      guesses++;

      if (guess === answer) {
        message = `You guessed it! It took you ${guesses} guesses.`;
        guessButton.classList.add('disabled');
        guessButton.disabled = true;
        guesses = 0;
      } else if (guess > answer) {
        message = `My number is lower than ${guess}`;
        input.value = '';
      } else {
        message = `My number is higher than ${guess}`;
        input.value = '';
      }
    }

    paragraph.textContent = message;
  });

  newGameLink.addEventListener('click', event => {
    event.preventDefault();
    newGame();
  });

  newGame();
});
