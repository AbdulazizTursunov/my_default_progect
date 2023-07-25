import 'package:flutter/material.dart';
import 'package:my_default_progect/provider/provider_passagir.dart';
import 'package:provider/provider.dart';

class ScreenPassagir extends StatefulWidget {
  const ScreenPassagir({Key? key}) : super(key: key);

  @override
  State<ScreenPassagir> createState() => _ScreenPassagirState();
}

class _ScreenPassagirState extends State<ScreenPassagir> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PassagirProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(provider.init()),
      ),
      body: Column(
        children: [
          ...List.generate(provider.dataModel.length, (index) {
            return Text(
              provider.dataModel[0].namePassager.toString(),
            );
          })
        ],
      ),
    );
  }
}
