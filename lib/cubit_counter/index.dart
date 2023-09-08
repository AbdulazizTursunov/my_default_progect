import 'package:bloc/bloc.dart';

abstract class SelectedIndex{}

final class SelectInit extends SelectedIndex{}
final class SelectNu extends SelectedIndex{}


class CubitIndex extends Cubit<SelectedIndex>{
  CubitIndex():super(SelectInit());

  List<int> select = [];

  isSelected(int index){
    emit(SelectNu());
    if(select.contains(index)){
      select.remove(index);
    }else{
      select.add(index);
    }
    emit(SelectInit());
  }
}