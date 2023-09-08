
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'class_cubit_calk.dart';

class CalculatorScreen extends StatelessWidget {



  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _exponentController = TextEditingController();

  // ${state.result.toString().substring(3,6)}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('degree of thigh')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CubitCal, ResultClass>(
              builder: (context, state) {
                return Text('Result: ${state.result} ',style: TextStyle(fontSize: 25,color: Colors.black45),);
              },
            ),
            SizedBox(height: 30,),
            TextField(
              onChanged: (va){
                int base = int.parse(_baseController.text) ?? 0;
                int exponent = int.parse(_exponentController.text) ?? 0;
                context.read<CubitCal>().calculatePower(base, exponent);
              },
              controller: _baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'A son (0 - 1000)'),
            ),
            TextField(
              onChanged: (va){
                final base = int.parse(_baseController.text) ?? 0;
                final exponent = int.parse(_exponentController.text) ?? 0;
                context.read<CubitCal>().calculatePower(base, exponent);
              },
              controller: _exponentController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'B son (0 - 100) '),
            ),
          ],
        ),
      ),
    );
  }
}