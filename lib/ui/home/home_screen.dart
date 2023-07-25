import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_default_progect/provider/calculate_provider.dart';
import 'package:my_default_progect/ui/home/widget/widget_home.dart';
import 'package:my_default_progect/utils/size_extansion.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print("this is build ------------------------------------------------");
    var provider = Provider.of<Calculator>(context, listen: false);

    TextEditingController firstNumberController = TextEditingController();
    TextEditingController secondNumberController = TextEditingController();
    final RegExp _numberRegExp = RegExp(r'^(-)?\d{1,5}$');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
        title: const Text("Calculator"),
      ),
      body: Center(
        child: Column(
          children: [
            20.ph,
            Consumer<Calculator>(
              builder: (context,calculator,child){
                return Text(
                  calculator.getCounterNumber.toString(),
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                );
              },

            ),
            30.ph,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^\d{0,5}'),
                    ),
                  ],
                  onChanged: (v){
                    if(v.length == 5){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("5 tadan ortiq raqam kirita olmaysiz"),),);
                    }
                  },
                  controller: firstNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "first number",
                    focusColor: Colors.blue,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ),
            30.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^\d{0,5}'),
                    ),
                  ],
                  onChanged: (v){
                    if(v.length == 5){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("5 tadan ortiq raqam kirita olmaysiz"),),);
                    }
                  },
                  controller: secondNumberController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'second number',
                    focusColor: Colors.blue,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ),
            30.ph,
            HelperNumberButton(
              firstController: firstNumberController,
              secondController: secondNumberController,
            ),
            // NumberButtonPress()
          ],
        ),
      ),
    );
  }
}
