
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

class ResultClass {
  final int result;
  ResultClass(this.result);
}




class CubitCal extends Cubit<ResultClass> {
  CubitCal() : super(ResultClass(1));

  void calculatePower(int Ason, int Bson) {
    if (Ason > 0 && Ason < 1000 && Bson > 0 && Bson < 100) {
      final result = pow(Ason,Bson);
      emit(ResultClass(result.toInt()));
    }
  }
}