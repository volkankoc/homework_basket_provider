import 'package:flutter/material.dart';

class BasketProvider extends ChangeNotifier {
  int _basketCount = 10;
  int get basketCount => _basketCount;
  updateBasket(){
    _basketCount++;
    notifyListeners();
  }
}
