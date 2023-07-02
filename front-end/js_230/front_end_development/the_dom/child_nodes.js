function walk(node, callback) {
  callback(node);

  for (let i = 0; i < node.childNodes.length; i++) {
    walk(node.childNodes[i], callback);
  }
}

function childNodes(id) {
  const parentNode = document.getElementById(id);
  const directChild = parentNode.childNodes.length;
  let indirectChild = 0;

  walk(parentNode, (node) => {
    if (node !== parentNode) {
      indirectChild++;
    }
  })

  console.log([directChild, indirectChild - directChild]);
}

// sample output
childNodes(1);
// [9, 12]
childNodes(4);
// [3, 1]
childNodes(9);
// [1, 1]
