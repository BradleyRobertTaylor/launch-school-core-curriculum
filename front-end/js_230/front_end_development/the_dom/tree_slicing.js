function sliceTree(start, end) {
  let endElement = document.getElementById(end);
  const startElement = document.getElementById(start);

  if (!startElement || !endElement) {
    return undefined;
  }

  let slices = [];

  while (endElement.tagName !== 'BODY' && start <= Number(endElement.id)) {
    slices.unshift(endElement.tagName);
    endElement = endElement.parentNode;
  }

  return slices.length <= 1 ? undefined : slices;
}

document.addEventListener('DOMContentLoaded', () => {
  console.log(sliceTree(1, 2));
  console.log(sliceTree(1, 76));
  console.log(sliceTree(2, 5));
  console.log(sliceTree(5, 4));
  console.log(sliceTree(1, 23));
  console.log(sliceTree(1, 22));
  console.log(sliceTree(11, 19));
});
