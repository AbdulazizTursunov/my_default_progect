
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSizeHomework extends StatefulWidget {
  const AnimatedSizeHomework({super.key});

  @override
  _AnimatedSizeHomeworkState createState() =>
      _AnimatedSizeHomeworkState();
}

class _AnimatedSizeHomeworkState extends State<AnimatedSizeHomework>
    with TickerProviderStateMixin {

  double _size = 150;
  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          selected =!selected;
          _size = _size == 150 ? 250 : 150;
        });
      },child: Icon(selected? Icons.refresh:Icons.rectangle_rounded),),
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: selected? Colors.black:Colors.blue,width:selected? 4:2 ),
          ),
          child: AnimatedSize(
            duration: const Duration(seconds: 2),
            child:Container(
                color: Colors.lightBlue,
                width: _size,
                height: _size,
                child: FlutterLogo(size: 100,)),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
