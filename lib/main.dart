import 'package:flutter/material.dart';
import 'package:winner_app/core/routing/app_router.dart';
import 'package:winner_app/winner_app.dart';

void main() {
  //fake push
  runApp(WinnerApp(
    appRouter: AppRouter(),
  ));
}
