import 'package:flutter/material.dart';
import 'package:my_default_progect/amaliyot/scfreen_2.dart';
import 'package:my_default_progect/amaliyot/screen_1.dart';
import 'package:my_default_progect/amaliyot/screen_3.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';


class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Number>(context, listen: false);
    int current = provider.actiwePage;
    return Scaffold(
      body:Consumer(
          builder: (context,number,child){
            return provider.pages[current];
          },),
      bottomNavigationBar: Consumer(builder: (context,number,child){
    return    BottomNavigationBar(
            items:const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home1"),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home2"),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home3"),
            ],
            currentIndex: provider.actiwePage,
            onTap: (va){
              provider.updateIndex(va);
            }

        );
      },
      ),
    );
  }
}
