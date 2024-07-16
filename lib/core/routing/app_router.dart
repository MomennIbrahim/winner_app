import 'package:flutter/material.dart';
import 'package:winner_app/core/routing/routes.dart';
import 'package:winner_app/screens/home_screen/home_screen.dart';
import 'package:winner_app/screens/name_of_team_screen/name_of_team_screen.dart';
import 'package:winner_app/screens/select_screen/select_screen.dart';
import 'package:winner_app/splash_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.selectScreen:
        return MaterialPageRoute(builder: (context) => const SelectScreen());
      case Routes.nameOfTeamsScreen:
        return MaterialPageRoute(
            builder: (context) => NameOfTeamScreen(
                  isThree: settings.arguments as Map<String ,bool>,
                  isTwo: settings.arguments as Map<String, bool>,
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) =>  HomeScreen(
          isCheck: settings.arguments as Map<String ,bool>,
        ));
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
