// Nearest Fibonacci
// Have the function to find nearest Fibonacci numbers, that te parameter is array

int nearestFibonacci(int num) {
  // Base Case
  if (num == 0) {
    return 0;
  }

  var first = 0, second = 1;
  var third = first + second;

  while (third <= num) {
    first = second;
    second = third;
    third = first + second;
  }
  // store the nearest fibonacci number
  var nearestFibonacciNumber =
      ((third - num).abs() >= (second - num).abs()) ? second : third;
  return nearestFibonacciNumber;
}

void main() {
  var arr = [15, 1, 3];
  var sum = arr.fold(0, (previous, current) => previous + current);
  int result = (sum - nearestFibonacci(sum)).abs();
  print(result);
}
