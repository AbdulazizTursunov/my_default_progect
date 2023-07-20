import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_default_progect/data/hive_service/hive_service.dart';


// import 'data/hive_service/hive_service.dart';
import 'data/local/shared-preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
StorageRepository.getInstance();

  Hive.initFlutter;
  HiveService.openBox();
  // Hive.registerAdapter(ListModelAdapter());
  runApp(const MyApp());

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
    );
  }
}
