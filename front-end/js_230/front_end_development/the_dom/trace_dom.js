function domTreeTracer(id) {
  let currentElement = document.getElementById(id);
  let domTree = [];

  do {
    domTree.push(allSiblings(currentElement));
    currentElement = currentElement.parentNode;
  } while (currentElement.tagName !== 'BODY');

  return domTree;
}


function allSiblings(node) {
  return Array.from(node.parentNode.children).map(({tagName}) => tagName);
}

domTreeTracer(1);
// [["ARTICLE"]]
domTreeTracer(2);
// [["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]
console.log(domTreeTracer(22));
// [["A"], ["STRONG"], ["SPAN", "SPAN"], ["P", "P"], ["SECTION", "SECTION"], ["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]
