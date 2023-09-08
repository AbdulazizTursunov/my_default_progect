import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_default_progect/cubit_kalk/calculate_screen.dart';
import '../cubit_firebase/login_screen_view/login_screen_vie.dart';
import 'cubit_tabbar.dart';

class CubitNavBar extends StatelessWidget {
  const CubitNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBarCubit, int>(
        builder: (context, screenIndex) {
          return IndexedStack(
            index: context.watch<NavigationBarCubit>().state,
            children:  [
              CalculatorScreen(),
            const  LoginScreenView(),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<NavigationBarCubit>().state,
        onTap: (index) {
          context.read<NavigationBarCubit>().currentScreen(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'result',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'login',
          ),
        ],
      ),
    );
  }
}