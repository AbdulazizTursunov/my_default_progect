import 'dart:math';

import 'package:flutter/material.dart';

class HomeworkFour extends StatefulWidget {
  const HomeworkFour({Key? key}) : super(key: key);

  @override
  State<HomeworkFour> createState() => _HomeworkFourState();
}

class _HomeworkFourState extends State<HomeworkFour>with TickerProviderStateMixin {
  bool size = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("positoned  animated"),
      ),
      body:Center(
        child: Stack(
          children:[
            AnimatedPositioned(
            height: 160,
            right: size? 50:150,
            left: size? 50:150,
            duration: Duration(seconds: 2),
            curve: Curves.linear,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  size = !size;
                });
              },
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue
              ),),
            ),
          ),
     ] ),
      )

    );
  }
}
