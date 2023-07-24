import 'dart:math';

import 'package:flutter/material.dart';

class AnimationExampleOne extends StatefulWidget {
  const AnimationExampleOne({Key? key}) : super(key: key);

  @override
  State<AnimationExampleOne> createState() => _AnimationExampleOneState();
}

class _AnimationExampleOneState extends State<AnimationExampleOne>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  bool selected = false;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation = Tween<double>(begin: 0, end: 2.0 * pi).animate(
      CurvedAnimation(parent: animationController,
          curve: Curves.linear,
          reverseCurve: Curves.easeOut),
    )
      ..addListener(() {
        setState(() {});
      });
    animationController.repeat();
  }

  @override
  void dispose() {
animationController.dispose();
super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('data'),),
      body: Center(child:
        Transform.rotate(angle: animation.value,
        child: Icon(Icons.rectangle_rounded,color: Colors.blue,size: 200,),
        ),
      ),
    );
  }
}
