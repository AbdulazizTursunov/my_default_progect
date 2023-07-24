import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class LoadingHomework extends StatefulWidget {
  const LoadingHomework({Key? key}) : super(key: key);

  @override
  State<LoadingHomework> createState() => _LoadingHomeworkState();
}

class _LoadingHomeworkState extends State<LoadingHomework>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  final Random _random = Random();
  Color colors = Colors.blue;

  getColor() {
    colors = Color.fromARGB(
      //or with fromRGBO with fourth arg as _random.nextDouble(),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  void _loading() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween(begin: 0, end: 2 * pi).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  void initState() {
    // TODO: implement initState
    _loading();
    getColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: colors,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: LinearProgressIndicator(
              color: Colors.blue,
              backgroundColor: Colors.blue.withOpacity(0.2),
              minHeight: 40,
              value: animationController.value,
            ),
          ),
          Text("${(animationController.value * 100).round()} % "),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  getColor();
                  _loading();
                });
              },
              child: Text("pressed")),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
}
