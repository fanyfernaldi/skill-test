// Leap year
// Find the Leap year List of ranges between 2 inputs

import 'dart:io';

void leapYear(int startYear, int endYear) {
  int i;
  print('Leap years:\n');

  // loop through between the start and end year
  for (i = startYear; i <= endYear; i++) {
    if (((i % 4 == 0) && (i % 100 != 0)) || i % 400 == 0) {
      if (i == endYear) {
        print('$i');
      } else {
        stdout.write('$i, ');
      }
    }
  }
}

void main() {
  var startYear = 1900;
  var endYear = 2020;

  leapYear(startYear, endYear);
}
