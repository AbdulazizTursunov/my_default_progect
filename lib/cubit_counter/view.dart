import 'package:flutter/material.dart';
import 'package:my_default_progect/cubit_counter/index.dart';
import 'package:my_default_progect/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndexView extends StatelessWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("selected "),),
      body: BlocBuilder<CubitIndex,SelectedIndex>(
        builder:(context,state){
          return  SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(5, (index) {
                  return GestureDetector(
                    onTap: (){
                      context.read<CubitIndex>().isSelected(index);
                    },
                    child: Container(
                      margin: EdgeInsets.all(3),
                      width: 100,
                      decoration: BoxDecoration(
                        color:BlocProvider.of<CubitIndex>(context).select.contains(index)? Colors.green:Colors.teal
                      ),
                    ),
                  );
                })

              ],
            ),
          );
        }
      )
    );
  }
}
