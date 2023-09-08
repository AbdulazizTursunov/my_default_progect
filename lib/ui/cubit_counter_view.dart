import 'package:flutter/material.dart';
import 'package:my_default_progect/cubit_counter/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter  view"),),
      body:BlocBuilder<CubitCounter,int>(
        builder:(context,count)=>Center(child: Text("${count}"),),),
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: (){
                context.read<CubitCounter>().increment();
              },
            ),
            const SizedBox(height: 4),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: (){
                context.read<CubitCounter>().decrement();
              },
            ),
          ],
        ),

    );
  }
}



