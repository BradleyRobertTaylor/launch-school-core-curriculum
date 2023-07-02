function colorGeneration(elementId) {
  const elements = Array.from(document.body.querySelectorAll('*'));
  const elementGeneration = getGeneration(elementId);

  elements.forEach(element => {
    if (elementGeneration === getGeneration(element.id)) {
      element.classList.add('generation-color');
    }
  });
}

function getGeneration(elementId) {
  const element = document.getElementById(elementId);
  let currElement = element;
  let generation = 0;
  while (currElement.tagName !== 'BODY') {
    currElement = currElement.parentNode;
    generation++;
  }

  return generation;
}

document.addEventListener('DOMContentLoaded', () => {
  document.addEventListener('click', e => {
    const element = document.getElementById(e.target.id);
    if (!element) return;

    colorGeneration(e.target.id);
  });
});