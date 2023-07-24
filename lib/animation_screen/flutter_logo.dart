import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_default_progect/utils/sizebox_helper_extansion_.dart';

class FlutterLogoAnimationScreen extends StatefulWidget {
  const FlutterLogoAnimationScreen({Key? key}) : super(key: key);

  @override
  State<FlutterLogoAnimationScreen> createState() => _FlutterLogoAnimationScreenState();
}

class _FlutterLogoAnimationScreenState extends State<FlutterLogoAnimationScreen>  with TickerProviderStateMixin{

  late AnimationController animationController;
  late AnimationController animationControllerLogo;
  late Animation<double> animation;
  late Animation <double> animationLogo;

  bool selected = false;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation = Tween<double>(begin: 0.0, end: 2.0 * pi).animate(
      CurvedAnimation(parent: animationController,
          curve: Curves.linear,
          ),
    )
      ..addListener(() {
        setState(() {});
      });
    animationController.repeat();


    animationControllerLogo =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animationLogo = Tween<double>(begin: 2.0 * pi, end: 0.0).animate(
      CurvedAnimation(parent: animationControllerLogo,
        curve: Curves.linear,
      ),
    )
      ..addListener(() {
        setState(() {});
      });
    animationControllerLogo.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
        child: SizedBox(
          width: 300,
         height: 300,
          child: Column(
              children: [
                Transform.rotate(
                    angle: animationLogo.value,
                    child: FlutterLogo(duration:Duration(seconds: 3),
                      curve: Curves.linear,
                      size: 50,)),
                40.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Transform.rotate(
                          angle: animationLogo.value,
                          child:const FlutterLogo(duration:Duration(seconds: 3),
                            curve: Curves.linear,
                            size: 50,)),

                      Transform.rotate(
                          angle: animationLogo.value,
                          child:const FlutterLogo(duration:Duration(seconds: 3),
                            curve: Curves.linear,
                            size: 50,)),
                  ],),
                ),
                40.ph,
                Transform.rotate(
                    angle: animationLogo.value,
                    child:const FlutterLogo(duration:Duration(seconds: 3),
                      curve: Curves.linear,
                      size: 50,)),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
