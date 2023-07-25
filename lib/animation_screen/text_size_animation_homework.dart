import 'package:flutter/material.dart';

class TextSizeAnimationHomework extends StatefulWidget {
  const TextSizeAnimationHomework({Key? key}) : super(key: key);

  @override
  State<TextSizeAnimationHomework> createState() =>
      _TextSizeAnimationHomeworkState();
}

class _TextSizeAnimationHomeworkState extends State<TextSizeAnimationHomework>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  void _sizeText(){

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 18.0, end: 50.0).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.linear,
        reverseCurve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
_sizeText();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rectangle_rounded),
        onPressed: () {
          _sizeText();
        },
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Text(
                "Hello! Welsome to TutorialKart.We shall zoom this text when you long press on it",
                style: TextStyle(fontSize: animation.value),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

}
