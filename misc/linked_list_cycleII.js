var detectCycle = function(head) {
  var object = {};

  while (head !== null) {
    if (object[head.val] === head) {
      return head;
    }

    if (object[head.val] === null) {
      object[head.val] = head;
    }

    head = head.next;
  }

  return null;
};

function ListNode(val) {
  this.val = val;
  this.next = null;
}

one = new ListNode(1);
two = new ListNode(2);

detectCycle(one);
