import 'dart:math';

import 'package:flutter/material.dart';


class BorderRadiusAnimation extends StatefulWidget {
  const BorderRadiusAnimation({Key? key}) : super(key: key);

  @override
  State<BorderRadiusAnimation> createState() => _BorderRadiusAnimationState();
}

class _BorderRadiusAnimationState extends State<BorderRadiusAnimation>  with TickerProviderStateMixin{

  double border = 0.5;
  double borderRadius = 5.0;


  _init(){
    border = Random().nextInt(3).toDouble() + 20;
    borderRadius = Random().nextInt(10).toDouble() + 50;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
