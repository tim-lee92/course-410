var getIntersectionNode = function(headA, headB) {
  if (headA === null || headB === null) {
    return null;
  }

  var counter = 0;
  var originalHeadA = headA;
  var originalHeadB = headB;
  var longList;
  var shortList;

  while (headA !== null && headB !== null) {
    headA = headA.next;
    headB = headB.next;
  }

  if (headA === null) {
    while (headB !== null) {
      headB = headB.next;
      counter = counter + 1;
    }
    longList = originalHeadB;
    shortList = originalHeadA;
  } else if (headB === null) {
    while (headA !== null) {
      headA = headA.next;
      counter = counter + 1;
    }
    longList = originalHeadA;
    shortList = originalHeadB;
  }

  for (i = 0; i < counter; i++) {
    longList = longList.next;
  }

  while (longList !== null && shortList !== null) {
    if (longList === shortList) {
      return longList;
    }
    longList = longList.next;
    shortList = shortList.next;
  }
}
