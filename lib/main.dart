import 'package:flutter/material.dart';
import 'package:my_default_progect/provider/provider_passagir.dart';
import 'package:my_default_progect/provider/ui/ui_screen.dart';
import 'package:my_default_progect/ui/pagenation/page_screen.dart';
import 'package:provider/provider.dart';
import 'animation_screen/animation_home_screen.dart';
import 'animation_screen/homework_animated_size.dart';
import 'animation_screen/homework_eight_aling.dart';
import 'animation_screen/homework_five.dart';
import 'animation_screen/homework_four.dart';
import 'animation_screen/homework_one.dart';
import 'animation_screen/homework_seven_opacity.dart';
import 'animation_screen/homework_six.dart';
import 'animation_screen/homework_three.dart';
import 'animation_screen/homework_two_gif.dart';
import 'animation_screen/loading_homework.dart';
import 'animation_screen/text_size_animation_homework.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
        Scaffold(
        appBar: AppBar(
          title: const Text("pages"),
        ),
        body:

        ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: pages.length,
            itemBuilder: (context, int index) {
              var page = pages[index];
              return Container(
                margin: EdgeInsets.all(10),
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue),
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page,
                          ));
                    },
                    title: Text(
                      "$page ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    trailing: Text(
                      "  ${index + 1}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              );
            }),
      ),
      // ChangeNotifierProvider<PassagirProvider>(
      //   create: (context)=> PassagirProvider(),
      //   child: ScreenPassagir(),
      // ),


    );
  }
}
