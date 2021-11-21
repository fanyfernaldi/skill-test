// FizzBuzz
// Given an integer n, return a string array answer (1-indexed) where:

void main() {
  var n = 15;
  var arr = [];
  for (var i = 1; i <= n; i++) {
    if (i % 15 == 0) {
      arr.add('FizzBuzz');
    } else if (i % 3 == 0) {
      arr.add('Fizz');
    } else if (i % 5 == 0) {
      arr.add('Buzz');
    } else {
      arr.add('$i');
    }
  }
  print(arr);
}
