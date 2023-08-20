import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:my_default_progect/model/countrys_model.dart';
import 'package:my_default_progect/utils/sizebox_extansion.dart';

class DetailCountry extends StatefulWidget {
  const DetailCountry({Key? key, required this.country}) : super(key: key);
  final Country country;

  @override
  State<DetailCountry> createState() => _DetailCountryState();
}

class _DetailCountryState extends State<DetailCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("country"),),
      body: ListView(
        children: [
       Container(
         height: 100,width: 100,
         decoration: BoxDecoration(
          
           borderRadius: BorderRadius.circular(12),
           color: Colors.white
         ),child: Center(child: Text(widget.country.emoji,style: TextStyle(fontSize: 100),)),
       ),
          30.ph,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
            Text("country name: ${widget.country.name}",style: TextStyle(fontSize: 25)),
            15.ph,
            Text("continent currency: ${widget.country.currency}",style: TextStyle(fontSize: 25)),
            15.ph,
            Text("continent capital: ${widget.country.capital}",style: TextStyle(fontSize: 25)),
            15.ph,
            Text("continent name: ${widget.country.continent.name}",style: TextStyle(fontSize: 25)),
            15.ph,
            Text("continent code: ${widget.country.continent.code}",style: TextStyle(fontSize: 25)),
          ],)
        ],
      ),

    );
  }
}
