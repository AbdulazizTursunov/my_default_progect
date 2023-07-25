import 'dart:math';

import 'package:flutter/material.dart';

class Calculator with ChangeNotifier {
  dynamic _counter = 0;

  Calculator({required double counter}) : _counter = counter;

  get getCounterNumber => _counter;


  void multiplyTwoNumber({required String numberFirst, required numberSecond}) {
    int num1 = int.parse(numberFirst);
    int num2 = int.parse(numberSecond);
    _counter = num1 * num2;
    // as double;
    notifyListeners();
  }

  void divideTwoNumber({required String numberFirst, required numberSecond}) {
    int num1 = int.parse(numberFirst);
    int num2 = int.parse(numberSecond);
    _counter = (num1 / num2);
    notifyListeners();
  }

  void addTwoNumber({required String numberFirst, required numberSecond}) {
    int num1 = int.parse(numberFirst);
    int num2 = int.parse(numberSecond);
    _counter = num1 + num2 ;
    // as double;
    notifyListeners();
  }

  void minusTwoNumber({required String numberFirst, required numberSecond}) {
    int num1 = int.parse(numberFirst);
    int num2 = int.parse(numberSecond);
    _counter = num1 - num2;
    // as double;
    notifyListeners();
  }

  void middleArifmetricTwoNumber(
      {required String numberFirst, required numberSecond}) {
    int num1 = int.parse(numberFirst);
    int num2 = int.parse(numberSecond);
    _counter = ((num1 + num2)/2);
    notifyListeners();
  }

  void middleGeometricTwoNumber(
      {required String numberFirst, required numberSecond}) {
    int num1 = int.parse(numberFirst);
    int num2 = int.parse(numberSecond);
    _counter = pow((num1 * num2),1/2);
    // as double;
    notifyListeners();
  }

  void clearNumber(){
   _counter = _counter.toString().substring(0,_counter.toString().length-1);
    notifyListeners();
  }

}
