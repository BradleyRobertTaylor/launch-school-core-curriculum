function nodeSwap(firstNodeId, secondNodeId) {
  if (!validNodes(firstNodeId, secondNodeId)) {
    return undefined;
  }

  let firstNode = document.getElementById(firstNodeId);
  let secondNode = document.getElementById(secondNodeId);
  const firstParentNode = firstNode.parentElement;
  const secondParentNode = secondNode.parentElement;

  let placeHolder = document.createElement('div');
  firstNode.insertAdjacentElement('beforebegin', placeHolder);
  secondNode.insertAdjacentElement('afterend', firstNode);
  placeHolder.insertAdjacentElement('beforebegin', secondNode);
  placeHolder.remove();

  return true;
}

function validNodes(firstNodeId, secondNodeId) {
  const firstNode = document.getElementById(firstNodeId);
  const secondNode = document.getElementById(secondNodeId);

  if (firstNode.contains(secondNode)
      || secondNode.contains(firstNode)
      || !firstNode
      || !secondNode) {
    return false;
  }

  return true;
}