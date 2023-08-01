import 'package:flutter/material.dart';
import 'package:my_default_progect/amaliyot/provider/provider.dart';
import 'package:provider/provider.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Number>(context);
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(provider.getNumber.toString()),
            TextButton(
                onPressed: () {
                  provider.numberAdd();
                },
                child: Text("add")),
            TextButton(
                onPressed: () {
                  provider.numberMinus();
                },
                child: Text("minus")),
          ],
        ));
  }
}
