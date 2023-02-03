import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int value = 0;
  String incrementing = 'incrementing';
  String decrementing = 'decrementing';

  void increment() {
    value += 1;
    notifyListeners();
  }
}
