import 'package:flutter/material.dart';
import 'package:my_default_progect/amaliyot/scfreen_2.dart';
import 'package:my_default_progect/amaliyot/screen_1.dart';
import 'package:my_default_progect/amaliyot/screen_3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
        body: Column(children: [
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFirst(),));}, child: Text("1"),),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenSecond(),));}, child: Text("2"),),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree(),));}, child: Text("3"),),
        ],)
    );
  }
}
