import 'package:flutter/material.dart';
import 'package:my_default_progect/amaliyot/provider/provider.dart';
import 'package:provider/provider.dart';

class ScreenSecond extends StatelessWidget {
  const ScreenSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Number>(context);
    return Scaffold(appBar: AppBar(),
        body:Column(
          children: [Text(provider.getNumber.toString()),

          ],
        )
    );
  }
}