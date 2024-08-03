import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:winner_app/core/routing/app_router.dart';
import 'package:winner_app/core/widgets/bloc_observe.dart';
import 'package:winner_app/winner_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  //fake push
  runApp(WinnerApp(
    appRouter: AppRouter(),
  ));
}
