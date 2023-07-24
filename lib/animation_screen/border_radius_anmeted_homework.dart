import 'dart:async';

import 'package:flutter/material.dart';


class BorderColor extends StatefulWidget {
  const BorderColor({Key? key}) : super(key: key);

  @override
  State<BorderColor> createState() => _BorderColorState();
}

class _BorderColorState extends State<BorderColor>  with TickerProviderStateMixin{

  bool  borderWidth = false;
Timer? timer;

  _init(){
   setState(() {
     borderWidth = !borderWidth;
   });
  }

@override
  void initState() {
    _init();
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      _init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),

    body: Center(
        child: AnimatedContainer(
          padding:  EdgeInsets.all( borderWidth? 10:40),
          height: 210,width: 210,
          duration: Duration(seconds: 2),
          curve: Curves.linear,
          decoration: BoxDecoration(
            color: borderWidth? Colors.blue:Colors.yellowAccent,
            borderRadius: BorderRadius.circular(180),
          ),
          child: AnimatedContainer(
           height: 180,width: 180,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(180),
            color: borderWidth? Colors.teal:Colors.red),
            duration: Duration(seconds: 2),
            curve: Curves.linear,
          ),
        ),
      ),

    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }
}
