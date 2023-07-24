import 'package:flutter/material.dart';


class PositionedAnimatedExample extends StatefulWidget {
  const PositionedAnimatedExample({Key? key}) : super(key: key);

  @override
  State<PositionedAnimatedExample> createState() =>
      _PositionedAnimatedExampleState();
}

class _PositionedAnimatedExampleState extends State<PositionedAnimatedExample> {
  double leftRight = 0.0;
  double topBottom = 0.0;


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Text("positoned  animated"),),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  AnimatedPositioned(
                  top: topBottom,
                    left: leftRight, duration: Duration(microseconds: 5),
                    child:
                    Container(height: 50,width: 50,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellowAccent
                    ),
                    ),
                ),
           ] ),
            ),
            Column(
              children: [
                TextButton(onPressed: (){
                  setState(() {
                    topBottom -= 50;
                  });
                }, child: Icon(Icons.arrow_circle_up),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(children: [
                    TextButton(onPressed: (){
                      setState(() {
                        leftRight -= 50;
                      });
                    }, child: Icon(Icons.arrow_circle_left_outlined),),
                    SizedBox(width: 50,),
                    TextButton(onPressed: (){
                      setState(() {
                        leftRight += 50;
                      });
                    }, child: Icon(Icons.arrow_circle_right_outlined),),
                  ],),
                ),
                TextButton(onPressed: (){
                  setState(() {
                    topBottom += 50;
                  });
                }, child: Icon(Icons.arrow_circle_right_outlined),),
              ],
            )
          ],
        ),
      );
  }
}
