import 'package:bloc/bloc.dart';

class NavigationBarCubit extends Cubit<int> {
  NavigationBarCubit() : super(0);

  currentScreen(int currentIndex) {
    emit(currentIndex);
  }
}