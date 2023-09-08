import 'package:flutter/material.dart';
import 'package:my_default_progect/cubit_counter/counter_cubit.dart';
import 'package:my_default_progect/cubit_counter/index.dart';
import 'package:my_default_progect/cubit_kalk/class_cubit_calk.dart';
import 'package:my_default_progect/cubit_tabbar/cubit_tabbar.dart';
import 'package:my_default_progect/cubit_tabbar/nav_bar_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit_firebase/cubit_login.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(providers: [
        BlocProvider(
          create: (_) => CubitCounter(),
         lazy: true,
        ),
        BlocProvider(
          create: (_) => CubitCal(),
          lazy: true,
        ),
        BlocProvider(
          create: (_) => NavigationBarCubit(),
          lazy: true,
        ),
        BlocProvider(
          create: (_) => CubitIndex(),
          lazy: true,
        ),
        BlocProvider(
          create: (_) => LoginCubit(),
          lazy: true,
        ),
      ],child: MyApp(),);
  }
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
      home:  CubitNavBar(),
    );
  }
}
