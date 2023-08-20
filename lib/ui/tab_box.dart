
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'car_screen/car_screen.dart';
import 'cars_screen/cars.dart';
import 'country_info/country_info_screen.dart';



class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  List<Widget> activeScreen = [];

  int screenIndex = 0;

  @override
  void initState() {
    activeScreen = [
      const CountryInfoScreen(),
      const CarsScreen(),
      const CarScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activeScreen[screenIndex],
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor:Colors.teal,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: screenIndex,
        onTap: (v){
          setState(() {
            screenIndex = v;
          });
        },
        items:const [
          BottomNavigationBarItem(
            label: 'Country',
            icon: Icon(CupertinoIcons.airplane),
          ),
          BottomNavigationBarItem(
            label: 'Cars',
            icon: Icon(Icons.car_crash_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Car',
            icon: Icon(Icons.car_rental_sharp),
          ),
        ],)
    );
  }
}

