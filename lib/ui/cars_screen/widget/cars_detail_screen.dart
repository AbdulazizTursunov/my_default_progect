import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/car_model.dart';

class CarsDetail extends StatefulWidget {
  const CarsDetail({Key? key, required this.datum,}) : super(key: key);
final  Datum  datum;

  @override
  State<CarsDetail> createState() => _CarsDetailState();
}

class _CarsDetailState extends State<CarsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("cars detail screen"),),
    body:  ListView(children: [

      Container(
          height: 200,width: 200,
          margin: EdgeInsets.all(3.h),
          padding: EdgeInsets.all(3.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: Colors.teal, width: 1),
              color: Colors.white24),
          child: Image.network(widget.datum.logo)
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            "  car model: ${widget.datum.carModel}",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "car price: ${widget.datum.averagePrice.toString()}",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.w600),
          ),
          Text("established year: ${widget.datum.establishedYear.toString()}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.sp,),)
        ]),
      ),
    ]),
    );
  }
}
