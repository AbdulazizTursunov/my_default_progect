import 'package:flutter/material.dart';
import 'package:my_default_progect/ui/home/home_screen.dart';
import 'package:my_default_progect/ui/routes/routse_name.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.contacts:
        return MaterialPageRoute(builder: (context) =>const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route mavjud emas"),
            ),
          ),
        );
    }
  }
}