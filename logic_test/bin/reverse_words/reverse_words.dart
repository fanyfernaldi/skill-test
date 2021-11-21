// Reverse Words
// Create a function that receive input and will give output:
// note: observe the Capital word behavior

void observeCapitalWord(String original, String reversed) {
  var reversedWords = reversed.toLowerCase().split(' ');
  var originalWords = original.split(' ');
  for (var i = 0; i < reversedWords.length; i++) {
    for (var j = 0; j < reversedWords[i].length; j++) {
      if (originalWords[i].substring(j, j + 1).toUpperCase() ==
          originalWords[i].substring(j, j + 1)) {
        reversedWords[i] = reversedWords[i].substring(0, j) +
            reversedWords[i].substring(j, j + 1).toUpperCase() +
            reversedWords[i].substring(j + 1);
      }
    }
  }
  print(reversedWords.join(' '));
}

String reverse_words(String original) {
  var reversed = [];
  var words = original.split(' ');
  for (var i = 0; i < words.length; i++) {
    reversed.add(String.fromCharCodes(words[i].codeUnits.reversed));
  }
  return reversed.join(' ');
}

void main() {
  var original = 'I am A Great human';

  observeCapitalWord(original, reverse_words(original));
}
