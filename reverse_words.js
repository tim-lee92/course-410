var reverseWords = function(str) {
  var chars = reverseString(str.trim()).split('');
  var left = 0;
  var right = 1;
  var lastIndex = 0;

  while (right < chars.length) {
    while (chars[right + 1] !== ' ' && chars[right + 1] !== undefined) {
      right++;
    }

    lastCurrentWordIndex = right;

    while (chars[right] === ' ') {
      right++;
    }

    lastIndex = right;

    while (left < lastCurrentWordIndex) {
      var temp = chars[left];
      chars[left] = chars[lastCurrentWordIndex];
      chars[lastCurrentWordIndex] = temp;

      console.log(chars);
      console.log('left ' + left + ', right ' + right);
      left++;
      lastCurrentWordIndex--;
    }

    left = lastIndex;
    right = lastIndex + 1;
  }

  return chars.join('');
};

function reverseString(str) {
  var chars = str.split('');
  var left = 0;
  var right = str.length - 1;

  while (left < right) {
    var temp = chars[left];
    chars[left] = chars[right];
    chars[right] = temp;

    left++;
    right--;
  }

  return chars.join('');
}


console.log('\'' + reverseWords('hello    world') + '\'');
