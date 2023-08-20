import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_default_progect/model/universal_data.dart';
import 'package:my_default_progect/network/dio_provider.dart';
import 'package:my_default_progect/ui/country_info/widget/country_detail.dart';

import '../../model/countrys_model.dart';

class CountryInfoScreen extends StatefulWidget {
  const CountryInfoScreen({Key? key}) : super(key: key);

  @override
  State<CountryInfoScreen> createState() => _CountryInfoScreenState();
}

class _CountryInfoScreenState extends State<CountryInfoScreen> {
  int lengthModel = 160;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Country Screen",style: TextStyle(color: Colors.black,fontSize: 18),),
      centerTitle: true,
      backgroundColor: Colors.white,elevation: 0,),
      body: FutureBuilder(
        future: DioProvider.getCountryInfo("countries"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            UniversalData? universalData = snapshot.data; // Use null safety
            if (universalData == null || universalData.data == null) {
              return Center(child: Text("Bo'sh ma'lumotlar."));
            }
            return ListView.builder(
              itemCount:lengthModel,
              itemBuilder: (context, index) {
                Countrys country = snapshot.data!.data;//universalData.data!.countries[index];
                return Container(
                  margin: EdgeInsets.all(3.sp),
                  padding: EdgeInsets.all(3.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.teal,width: 1),
                    color: Colors.white24
                  ),
                  child: ListTile(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailCountry(country: country.data.countries[index]),));},
                   leading: Text(country.data.countries[index].emoji,style: TextStyle(fontSize: 40)),
                    title: Text(country.data.countries[index].name, style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w400),),
                    subtitle: Text(country.data.countries[index].continent.name, style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            // Ma'lumotlarni olishda xatolik yuz berdi
            debugPrint("Xatolik: ${snapshot.error}");
            return Center(child: Text("Ma'lumotlar olinmadi."));
          } else {
            // Ma'lumotlar yo'q
            return Center(child: Text("Bo'sh ma'lumotlar."));
          }
        },
      ),
    );
  }
}
