import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_default_progect/model/universal_data.dart';
import 'package:my_default_progect/network/dio_provider.dart';
import '../../model/car_model_by_id.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Car info Screen",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder(
          future: DioProvider.getCarInfoById("companies", 2),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              UniversalData? universalData = snapshot.data; // Use null safety
              if (universalData == null || universalData.data == null) {
                return Center(child: Text("Bo'sh ma'lumotlar."));
              }
              CarModelById carModelById = snapshot.data!.data;
              return
                ListView(children: [
                CarouselSlider(
                  items: carModelById.carPics.map<Widget>((picUrl) {
                    return Image.network(picUrl);
                  }).toList(),
                  options: CarouselOptions(
                    height: 300,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.linear,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    onPageChanged: (index, reason) {},
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 100,width: 100,
                    margin: EdgeInsets.all(3.h),
                    padding: EdgeInsets.all(3.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(color: Colors.teal, width: 1),
                        color: Colors.white24),
                    child: Image.network(carModelById.logo)
                    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                     "  car model: ${carModelById.carModel}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                    "car price: ${carModelById.averagePrice.toString()}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("established year: ${carModelById.establishedYear.toString()}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600)),
                    Text(
                      carModelById.description,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
                ),
              ]);
            } else if (snapshot.hasError) {
              // Ma'lumotlarni olishda xatolik yuz berdi
              debugPrint("Xatolik: ${snapshot.error}");
              return const Center(child: Text("Ma'lumotlar olinmadi."));
            } else {
              // Ma'lumotlar yo'q
              return const Center(child: Text("Bo'sh ma'lumotlar."));
            }
          }),
    );
  }
}
