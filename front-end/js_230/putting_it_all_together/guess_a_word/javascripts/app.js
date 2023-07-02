document.addEventListener("DOMContentLoaded", () => {
  const message = document.querySelector("#message");
  const letters = document.querySelector("#spaces");
  const guesses = document.querySelector("#guesses");
  const apples = document.querySelector("#apples");
  const replay = document.querySelector("#replay");

  const randomWord = (() => {
    let words = ["apple", "banana", "orange", "pear"];

    return () => {
      let index = Math.floor(Math.random() * words.length);
      let word = words.splice(index, 1)[0];
      return word;
    };
  })();

  class Game {
    constructor() {
      this.chooseWord();
      this.incorrectGuesses = 0;
      this.lettersGuessed = [];
      this.allowedGuessed = 6;
      this.createBlanks();
    }

    chooseWord() {
      const tempWord = randomWord();
      if (!tempWord) {
        return "Sorry, I've run out of words!";
      }
      this.word = tempWord;
      return this;
    }

    createBlanks() {
      let wordLength = this.word.length;
      let spans = [];
      for (let i = 0; i < wordLength; i++) {
        let span = document.createElement("span");
        span.dataset.id = i;
        spans.push(span);
      }

      spans.forEach((span) => letters.appendChild(span));
    }
  }

  const game = new Game();
});
