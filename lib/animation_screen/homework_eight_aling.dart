import 'package:flutter/material.dart';


class AnimatedAlignHomework extends StatefulWidget {
  const AnimatedAlignHomework({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignHomework> createState() => _AnimatedAlignHomeworkState();
}

class _AnimatedAlignHomeworkState extends State<AnimatedAlignHomework> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(""),),
    floatingActionButton: FloatingActionButton(onPressed: (){
      setState(() {
        isPressed = !isPressed;
      });
    },child: Icon(Icons.online_prediction_sharp),),
      body: Center(child: Container(
        height: 300,width: 300,
        color: Colors.blue,
        child: AnimatedAlign(
          alignment: isPressed ? Alignment.topLeft : Alignment.bottomRight,
          duration: const Duration(seconds:4),
          curve: Curves.bounceInOut,
          child: Icon(Icons.ac_unit,size: 50,color: Colors.white,) ,
        ),
      ),
      ),
      );
  }
}
