import 'package:flutter/material.dart';
import 'package:winner_app/core/routing/routes.dart';
import 'package:winner_app/screens/select_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.selectScreen:
        return MaterialPageRoute(builder: (context) => const SelectScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text("No route defined ${settings.name}"),
                  ),
                ));
    }
  }
}
