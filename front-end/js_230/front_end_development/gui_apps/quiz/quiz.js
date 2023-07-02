const questions = [
  {
    id: 1,
    description: "Who is the author of <cite>The Hitchhiker's Guide to the Galaxy</cite>?",
    options: ['Dan Simmons', 'Douglas Adams', 'Stephen Fry', 'Robert A. Heinlein'],
  },
  {
    id: 2,
    description: 'Which of the following numbers is the answer to Life, the \
                  Universe and Everything?',
    options: ['66', '13', '111', '42'],
  },
  {
    id: 3,
    description: 'What is Pan Galactic Gargle Blaster?',
    options: ['A drink', 'A machine', 'A creature', 'None of the above'],
  },
  {
    id: 4,
    description: 'Which star system does Ford Prefect belong to?',
    options: ['Aldebaran', 'Algol', 'Betelgeuse', 'Alpha Centauri'],
  },
];

const answerKey = { '1': 'Douglas Adams', '2': '42', '3': 'A drink', '4': 'Betelgeuse' };

class Quiz {
  constructor(questions, answerKey) {
    this.questions = questions;
    this.answerKey = answerKey;
    this.displayQuestions();
    this.resetForm();
    this.bindEvents();
  }

  displayQuestions() {
    this.questions.forEach(({id, description, options}) => {
      const $questionDiv = $(`<div class="question" data-id=${id}></div>`)
        .append(($(`<p class="description"></p>`).html(`Q${id}. ${description}`)));

      options.forEach((option) => {
        const $questionLabel = $(`<label>${option}</label>`); 
        const $input = $('<input>', {
          name: id,
          type: 'radio',
          value: option,
        });

        $questionLabel.contents().before($input);
        $questionDiv.append($questionLabel);
      });

      $questionDiv.append($('<p class="result"></p>'));
      $('fieldset').append($questionDiv);
    });
  }

  markQuestions() {
    this.questions.forEach(({id}) => {
      this.markQuestion(id);
    });

    $('.submit').addClass('disabled');
    $('.reset_form').removeClass('disabled');
  }

  markQuestion(id) {
    const $question = $(`div[data-id="${id}"]`);
    const $result = $question.find('.result');
    const userInput = $question.find(`input[name="${id}"]:checked`).val();
    const answer = this.answerKey[id];

    if (!userInput) {
      $result.text(
        `You didn't answer this question. Correct answer is ${answer}.`
      );
      $result.addClass('wrong');
    } else if (this.isCorrect(id, userInput)) {
      $result.text('Correct answer.');
      $result.addClass('correct');
    } else {
      $result.text(
        `Wrong answer. Correct answer is ${answer}.`
      );
      $result.addClass('wrong');
    }

    $('.result').css('opacity', '1');
  }

  resetForm() {
    $('.result').text('Filler text').css('opacity', '0');
    $('.submit').removeClass('disabled');
    $('.reset_form').addClass('disabled');
  }

  isCorrect(id, userInput) {
    return this.answerKey[String(id)] === userInput;     
  }

  bindEvents() {
    $('.submit').click(this.markQuestions.bind(this)); 
    $('.reset_form').click(this.resetForm.bind(this));
  }
}

$(document).ready(() => {
  const quiz = new Quiz(questions, answerKey);
});

