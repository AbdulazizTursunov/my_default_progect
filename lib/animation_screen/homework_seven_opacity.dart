import 'package:flutter/material.dart';

class SevenHomework extends StatefulWidget {
  const SevenHomework({Key? key}) : super(key: key);

  @override
  State<SevenHomework> createState() => _SevenHomeworkState();
}

class _SevenHomeworkState extends State<SevenHomework> {
  bool isOpacity = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
          isOpacity = !isOpacity;
        });

        },child: Icon(Icons.flip),),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 3),
            curve: Curves.linear,
            height: 200,
            width: 200,
            color: !isOpacity ? Colors.blue : Colors.blue.withOpacity(0.0),
          ),
        ),
    );
  }
}
