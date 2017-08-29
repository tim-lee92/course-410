var reverseList = function(head) {
  if (head === null || head.next === null) {
    return head;
  }

  var tail = head.next;
  var newHead = reverseList(tail);
  tail.next = head;
  head.next = null;
  return newHead;
};
