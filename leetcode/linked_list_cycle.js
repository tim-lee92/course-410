var hasCycle = function(head) {
  if (head === null) {
    return false;
  }

  var slower = head;
  var faster = head;

  while (faster.next !== null && faster.next.next !== null) {
    faster = faster.next.next;
    slower = slower.next;
    if (slower === faster) {
      return true;
    }
  }

  return false;
};
