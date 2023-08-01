
import 'package:flutter/material.dart';
import 'package:my_default_progect/amaliyot/home.dart';
import 'package:my_default_progect/amaliyot/provider/provider.dart';
import 'package:my_default_progect/amaliyot/scfreen_2.dart';
import 'package:my_default_progect/amaliyot/screen_1.dart';
import 'package:my_default_progect/amaliyot/screen_3.dart';
import 'package:my_default_progect/data/network/api_provider.dart';
import 'package:my_default_progect/data/network/user_repository.dart';
import 'package:my_default_progect/provider/user_provider.dart';
import 'package:my_default_progect/ui/user_info_screen.dart';
import 'package:provider/provider.dart';

import 'amaliyot/tab_box/tab_box.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(
            userRepository: UserRepository(apiProvider: ApiProvider()),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => Number(),
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TabBox()
    );
  }

}
