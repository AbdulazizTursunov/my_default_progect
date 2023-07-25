import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_default_progect/provider/calculate_provider.dart';
import 'package:my_default_progect/ui/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Calculator(counter: 0),
          lazy: true,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return
    ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

    theme: ThemeData(
    primarySwatch: Colors.blue,
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
    ),
    home: HomeScreen()
    );}
    );
  }
}
