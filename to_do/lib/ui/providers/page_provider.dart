import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int _currentIndex = 0;

  // getter
  int get currentIndex => _currentIndex;

  // setter
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
