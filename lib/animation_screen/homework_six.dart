import 'package:flutter/material.dart';

class SixHomework extends StatefulWidget {
  const SixHomework({Key? key}) : super(key: key);

  @override
  State<SixHomework> createState() => _SixHomeworkState();
}

class _SixHomeworkState extends State<SixHomework> {
  bool _first = true;
  bool color = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: [
          Center(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text(
                "Hello Flutter World",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: color ? Colors.grey : Colors.blue),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = 70;
                      _color = Colors.red;
                      _first = !_first;
                  color =false;
                    });
                  },
                  icon: Icon(Icons.not_started_outlined,),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: color ? Colors.blue : Colors.grey),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = 25;
                      _color = Colors.blue;
                      _first = !_first;
                     color=true;
                    });
                  },
                  icon: Icon(Icons.refresh),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
