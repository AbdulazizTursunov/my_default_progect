import 'dart:math';

import 'package:flutter/material.dart';

class AnimationContainerExample extends StatefulWidget {
  const AnimationContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimationContainerExample> createState() =>
      _AnimationContainerExampleState();
}

class _AnimationContainerExampleState extends State<AnimationContainerExample>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = Tween(begin: 0.0, end: 2 * pi).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceIn,
    ));
  }

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Column(
        children: [

          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: selected ? Colors.teal : Colors.blue,
                  border: Border.all(
                      color: selected ? Colors.pink : Colors.black,
                      width: selected ? 3 : 3),
                ),
                width: 400,
                height: 400,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: selected
                    ? Text(
                        "this is second screen",
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    : Text(
                        "this is first screen",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.yellow),
            width: 200,
            height: 80,
            child: IconButton(
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
              icon: Text("click here"),
            ),
          ),
        ],
      ),
    );
  }
}
