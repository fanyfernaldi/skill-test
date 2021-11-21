// Palindrome
// Do research for what it is. Then make a function that will return true or false to cheeck if they are palindrome

bool isPalindrome(String words) {
  for (var i = 0; i < words.length ~/ 2; i++) {
    if (words[i].toLowerCase() != words[words.length - i - 1].toLowerCase()) {
      return false;
    }
  }
  return true;
}

void main() {
  var words = [
    'Radar',
    'Malam',
    'Kasur ini rusak',
    'Ibu Ratna antar ubi',
    'Malas',
    'Makan nasi goreng',
    'Balonku ada lima',
  ];

  for (var word in words) {
    print(isPalindrome(word)
        ? '$word # --> palindrome'
        : '$word # --> not palindrome');
  }
}
