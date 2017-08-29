var removeElements = function(head, val) {
  if (head === null) {
    return null;
  }

  var tail = head.next;

  if (head.val === val) {
    return removeElements(tail, val);
  } else {
    console.log(head.val)
    return helper(head, tail);
  }
};

var helper = function(head, tail) {
  head.next = tail;
  return head;
};
