import 'package:flutter/cupertino.dart';


class WashAndFoldProvider with ChangeNotifier {
  int _shirtCount = 0;
  int get shirtCount => _shirtCount;
  int _tShirtCount = 0;
  int get tShirtCount => _tShirtCount;
  int _jacketCount = 0;
  int get jacketCount => _jacketCount;

  addShirt() {
    _shirtCount++;
    notifyListeners();
  }

  addJacket() {
    _jacketCount++;
    notifyListeners();
  }

  addTShirt() {
    _tShirtCount++;
    notifyListeners();
  }
}
