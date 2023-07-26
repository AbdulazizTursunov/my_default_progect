
import 'package:flutter/material.dart';
import 'package:my_default_progect/data/network/api_provider.dart';
import 'package:my_default_progect/data/network/user_repository.dart';
import 'package:my_default_progect/provider/user_provider.dart';
import 'package:my_default_progect/ui/user_info_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => UserProvider(
          userRepository: UserRepository(apiProvider: ApiProvider()),
        ),
      )
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserInfoScreen(),
    );
  }
}
