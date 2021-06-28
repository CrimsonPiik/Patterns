import 'package:flutter/cupertino.dart';

class Patterns extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increament() {
    _counter++;
    print("$_counter");
    notifyListeners();
  }
}
