import 'package:flutter/material.dart';

import '../scfreen_2.dart';
import '../screen_1.dart';
import '../screen_3.dart';

class Number with ChangeNotifier {
  int _counter = 0;


  get getNumber => _counter;
  List<Widget> pages = [
    ScreenFirst(),
    ScreenThree(),
    ScreenSecond(),
  ];
  int actiwePage= 1;


  void numberAdd(){
    _counter++;
    notifyListeners();
  }
  void numberMinus(){
    _counter--;
    notifyListeners();
  }

  void updateIndex(int newIndex){
    actiwePage = newIndex;
    notifyListeners();
  }


}