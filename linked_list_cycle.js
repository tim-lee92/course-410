var hasCycle = function(head) {
  if (head === null || head.next === null) {
    return false;
  }

  var slow = head;
  var fast = head.next;

  while (fast !== null) {
    slow = slow.next;
    fast = fast.next.next;

    if (slow === fast) {
      return true;
    }
  }

  return false;
}
