import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_default_progect/model/universal_data.dart';
import 'package:my_default_progect/network/dio_provider.dart';
import 'package:my_default_progect/ui/cars_screen/widget/cars_detail_screen.dart';
import '../../model/car_model.dart';

class CarsScreen extends StatefulWidget {
  const CarsScreen({Key? key}) : super(key: key);

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Cars Screen",style: TextStyle(color: Colors.black,fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.white,elevation: 0,),
      body: FutureBuilder(
        future: DioProvider.getCarInfo("companies"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            UniversalData? universalData = snapshot.data; // Use null safety
            if (universalData == null || universalData.data == null) {
              return Center(child: Text("Bo'sh ma'lumotlar."));
            }
           CarModel carModel = snapshot.data!.data;
            return ListView.builder(
              itemCount:carModel.data.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(3.sp),
                  padding: EdgeInsets.all(3.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.teal,width: 1),
                      color: Colors.white24
                  ),
                  child: ListTile(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CarsDetail(datum: carModel.data[index]),));},
                    leading:CachedNetworkImage(placeholder: (context,url)=>CircularProgressIndicator(),
                      imageUrl: carModel.data[index].logo,height: 40,width: 40,
                      errorWidget: (context,d,s)=>Text('No image'),
                    ),
                    title: Text(carModel.data[index].averagePrice.toString(),style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.w500),),
                    subtitle: Text(carModel.data[index].establishedYear.toString(), style: TextStyle(color: Colors.teal,fontSize: 18,fontWeight: FontWeight.w400),),
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
