import 'package:flutter/material.dart';
import 'package:my_default_progect/animation_screen/text_size_animation_homework.dart';

import 'border_radius_anmeted_homework.dart';
import 'flutter_logo.dart';
import 'homework_animated_size.dart';
import 'homework_eight_aling.dart';
import 'homework_five.dart';
import 'homework_four.dart';
import 'homework_one.dart';
import 'homework_seven_opacity.dart';
import 'homework_six.dart';
import 'homework_three.dart';
import 'homework_two_gif.dart';
import 'loading_homework.dart';

List<Widget> pages = [
  const FlutterLogoAnimationScreen(),
  const AnimatedSizeHomework(),
  const AnimatedAlignHomework(),
  const FiveHomework(),
  const HomeworkFour(),
  const AnimationExampleOne(),
  const SevenHomework(),
  const SixHomework(),
  const PositionedAnimatedExample(),
  const AnimationContainerExample(),
  const LoadingHomework(),
  const TextSizeAnimationHomework(),
  const BorderColor(),
];
// import 'package:flutter/material.dart';
// import 'package:my_default_progect/ui/pagenation/page_screen.dart';
// import 'animation_screen/animation_home_screen.dart';
// import 'animation_screen/homework_animated_size.dart';
// import 'animation_screen/homework_eight_aling.dart';
// import 'animation_screen/homework_five.dart';
// import 'animation_screen/homework_four.dart';
// import 'animation_screen/homework_one.dart';
// import 'animation_screen/homework_seven_opacity.dart';
// import 'animation_screen/homework_six.dart';
// import 'animation_screen/homework_three.dart';
// import 'animation_screen/homework_two_gif.dart';
// import 'animation_screen/loading_homework.dart';
// import 'animation_screen/text_size_animation_homework.dart';
//
// void main () async{
//   runApp(MyApp());
// }
//
//
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:Scaffold(
//         appBar: AppBar(title:const Text("pages"),),
//         body: ListView.builder(
//             physics:const   PageScrollPhysics(),
//             itemCount: pages.length,
//             itemBuilder: (context, int index){
//               var page = pages[index];
//               return ListTile(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => page,));
//                 },
//                 title:  Text("$page             ${index + 1}"),
//               );
//             }
//         ),
//
//       ),
//
//     );
//   }
// }