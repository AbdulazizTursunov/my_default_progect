import 'package:flutter/material.dart';
import 'package:my_default_progect/provider/calculate_provider.dart';
import 'package:my_default_progect/utils/size_extansion.dart';
import 'package:provider/provider.dart';

class HelperNumberButton extends StatelessWidget {
  const HelperNumberButton({Key? key,required this.firstController, required this.secondController}) : super(key: key);


final TextEditingController firstController;
final TextEditingController secondController;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Calculator>(context);
    return Column(
      children: [
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Container(
             height: 80,width: 80,
             decoration: BoxDecoration(
               boxShadow: [
                 BoxShadow(
                   color: Colors.black.withOpacity(0.5),
                   spreadRadius: 7,
                   blurRadius: 5,
                   offset:const Offset(0, 5), // changes position of shadow
                 ),
               ],
               borderRadius: BorderRadius.circular(5),
               color: Colors.blue,
               border: Border.all(color:Colors.yellowAccent,width: 2.0),
             ),child: ElevatedButton(
             onPressed: (){
               if(firstController.text.isNotEmpty && secondController.text.isNotEmpty){
                 provider.addTwoNumber(numberFirst: firstController.text, numberSecond: secondController.text);
               }else{
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("maydonlar to'liq qiymatlanmagan")));
               }
             },
             child:const Center(child:Icon(Icons.add) ,),),),

           Container(
             height: 80,width: 80,
             decoration: BoxDecoration(
               boxShadow: [
                 BoxShadow(
                   color: Colors.black.withOpacity(0.5),
                   spreadRadius: 7,
                   blurRadius: 5,
                   offset:const Offset(0, 5), // changes position of shadow
                 ),
               ],
               borderRadius: BorderRadius.circular(5),
               color: Colors.blue,
               border: Border.all(color:Colors.yellowAccent,width: 2.0),
             ),child: ElevatedButton(
             onPressed: (){
               if(firstController.text.isNotEmpty && secondController.text.isNotEmpty){
                 provider.minusTwoNumber(numberFirst: firstController.text, numberSecond: secondController.text);
               }else{
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("maydonlar to'liq qiymatlanmagan")));
               }
             },
             child:const Center(child:Icon(Icons.remove),),
           ),
           ),
           Container(
             height: 80,width: 80,
             decoration: BoxDecoration(
               boxShadow: [
                 BoxShadow(
                   color: Colors.black.withOpacity(0.5),
                   spreadRadius: 7,
                   blurRadius: 5,
                   offset:const Offset(0, 5), // changes position of shadow
                 ),
               ],
               borderRadius: BorderRadius.circular(5),
               color: Colors.blue,
               border: Border.all(color:Colors.yellowAccent,width: 2.0),
             ),child: ElevatedButton(
             onPressed: (){
               if(firstController.text.isNotEmpty && secondController.text.isNotEmpty){
                 provider.divideTwoNumber(numberFirst: firstController.text, numberSecond: secondController.text);
               }else{
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("maydonlar to'liq qiymatlanmagan")));
               }
             },
             child:const Center(child:Text('/')),
           ),
           ),
           Container(
             height: 80,width: 80,
             decoration: BoxDecoration(
               boxShadow: [
                 BoxShadow(
                   color: Colors.black.withOpacity(0.5),
                   spreadRadius: 7,
                   blurRadius: 5,
                   offset:const Offset(0, 5), // changes position of shadow
                 ),
               ],
               borderRadius: BorderRadius.circular(5),
               color: Colors.blue,
               border: Border.all(color:Colors.yellowAccent,width: 2.0),
             ),child: ElevatedButton(
             onPressed: (){
               if(firstController.text.isNotEmpty && secondController.text.isNotEmpty){
                 provider.multiplyTwoNumber(numberFirst: firstController.text, numberSecond: secondController.text);
               }else{
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("maydonlar to'liq qiymatlanmagan")));
               }
             },
             child:const Center(child:Text("X",style: TextStyle(fontSize: 20),)),
           ),
    ),
           ] ),
       ),
     30.ph,
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [   Container(
       height: 80,
       decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
             color: Colors.black.withOpacity(0.5),
             spreadRadius: 7,
             blurRadius: 5,
             offset:const Offset(0, 5), // changes position of shadow
           ),
         ],
         borderRadius: BorderRadius.circular(5),
         color: Colors.blue,
         border: Border.all(color:Colors.yellowAccent,width: 2.0),
       ),child: ElevatedButton(
       onPressed: (){
         if(firstController.text.isNotEmpty && secondController.text.isNotEmpty){
           provider.middleArifmetricTwoNumber(numberFirst: firstController.text, numberSecond: secondController.text);
         }else{
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("maydonlar to'liq qiymatlanmagan")));
         }
       },
       child:const Center(child: Text('arifmetik'),),
     ),
     ),
       Container(
         height: 80,
         decoration: BoxDecoration(
           boxShadow: [
             BoxShadow(
               color: Colors.black.withOpacity(0.5),
               spreadRadius: 7,
               blurRadius: 5,
               offset:const Offset(0, 5), // changes position of shadow
             ),
           ],
           borderRadius: BorderRadius.circular(5),
           color: Colors.blue,
           border: Border.all(color:Colors.yellowAccent,width: 2.0),
         ),child: ElevatedButton(
         onPressed: (){
           if(firstController.text.isNotEmpty && secondController.text.isNotEmpty){
             provider.middleGeometricTwoNumber(numberFirst: firstController.text, numberSecond: secondController.text);
           }else{
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("maydonlar to'liq qiymatlanmagan")));
           }
         },
         child:const Center(child: Text("geometric"),),
       ),
       ),
         Container(
           height: 80,width: 80,
           decoration: BoxDecoration(
             boxShadow: [
               BoxShadow(
                 color: Colors.black.withOpacity(0.5),
                 spreadRadius: 7,
                 blurRadius: 5,
                 offset:const Offset(0, 5), // changes position of shadow
               ),
             ],
             borderRadius: BorderRadius.circular(5),
             color: Colors.red,
             border: Border.all(color:Colors.red,width: 2.0),
           ),child: ElevatedButton(
           style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.red)),
           onPressed: (){
             provider.clearNumber();
           },
           child:const Center(child: Text("X"),),
         ),
         ),
    ],
    ),

      ],
    );
  }
}
