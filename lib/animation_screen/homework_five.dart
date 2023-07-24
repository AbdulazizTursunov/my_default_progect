import 'dart:math';

import 'package:flutter/material.dart';

class FiveHomework extends StatefulWidget {
  const FiveHomework({Key? key}) : super(key: key);

  @override
  State<FiveHomework> createState() => _FiveHomeworkState();
}

class _FiveHomeworkState extends State<FiveHomework>
{
  double height = 100.0;
  double width = 100.0;
  Color colors = Colors.yellowAccent;
  double borderRadius = 10.0;
  int countSize = 0;

  final Random _random = Random();
  FiveHomeworkState() {
    setState(() {
      if (countSize < 7) {
        height = Random().nextInt(300).toDouble() + 50;
        width = Random().nextInt(300).toDouble() + 50;
        borderRadius = Random().nextInt(10).toDouble() + 32;
        colors = Color.fromARGB(
          //or with fromRGBO with fourth arg as _random.nextDouble(),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
        );
        countSize++;
      } else {
        height = 100.0;
        width = 100.0;
        colors = Colors.yellowAccent;
        borderRadius = 10.0;
        countSize = 0;
      }
    },);
  }

  @override
  Widget build(BuildContext context) {
    // print(countSize);
    return Scaffold(
      appBar: AppBar(
        title:const Text(""),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

            FiveHomeworkState();

        },
      ),
      body: Center(
        child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: colors,
          ),

          width: width,
          height: height,
          duration: Duration(milliseconds:500 ),
          curve: Curves.linear,
        ),
      ),
    );
  }


}
