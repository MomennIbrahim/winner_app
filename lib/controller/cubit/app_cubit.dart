import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppCubitInitial());

  TextEditingController tAController = TextEditingController();
  TextEditingController tBController = TextEditingController();
  TextEditingController tCController = TextEditingController();
  TextEditingController tDController = TextEditingController();
  TextEditingController topScoreController = TextEditingController();

  TextEditingController tAScoreController = TextEditingController();
  TextEditingController tBScoreController = TextEditingController();
  TextEditingController tCScoreController = TextEditingController();
  TextEditingController tDScoreController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final addScoreFormKey = GlobalKey<FormState>();

  List<int> tAListScore = [];
  List<int> tBListScore = [];
  List<int> tCListScore = [];
  List<int> tDListScore = [];
  int totalAScore = 0;
  int totalBScore = 0;
  int totalCScore = 0;
  int totalDScore = 0;

  bool isTwo = false;
  bool isThree = false;
  bool isFoure = false;

  void changeIsTwo() {
    isTwo = true;
    isThree = false;
    isFoure = false;
    emit(ChangeIsTwoState());
  }

  void changeIsThree() {
    isThree = true;
    isTwo = false;
    isFoure = false;
    emit(ChangeIsThreeState());
  }

  void changeIsFour() {
    isFoure = true;
    isThree = false;
    isTwo = false;
    emit(ChangeIsFourState());
  }

  void addAScore() {
    tAListScore.add(int.parse(tAScoreController.text));
    totalAScore = totalAScore + int.parse(tAScoreController.text);
    tAScoreController.clear();
    emit(AddNewScoreState());
  }

  void addBScore() {
    tBListScore.add(int.parse(tBScoreController.text));
    totalBScore = totalBScore + int.parse(tBScoreController.text);
    tBScoreController.clear();
    emit(AddNewBScoreState());
  }

  void addCScore() {
    tCListScore.add(int.parse(tCScoreController.text));
    totalCScore = totalCScore + int.parse(tCScoreController.text);
    tCScoreController.clear();
    emit(AddNewBScoreState());
  }

  void addDScore() {
    tDListScore.add(int.parse(tDScoreController.text));
    totalDScore = totalDScore + int.parse(tDScoreController.text);
    tDScoreController.clear();
    emit(AddNewBScoreState());
  }

  removeLastElementTA() {
    totalAScore = totalAScore - tAListScore.last;

    tAListScore.removeLast();
    emit(RemoveLastElement());
  }

  removeLastElementTB() {
    totalBScore = totalBScore - tBListScore.last;

    tBListScore.removeLast();
    emit(RemoveLastElement());
  }

  removeLastElementTC() {
    totalCScore = totalCScore - tCListScore.last;

    tCListScore.removeLast();
    emit(RemoveLastElement());
  }

  removeLastElementTD() {
    totalDScore = totalDScore - tDListScore.last;

    tDListScore.removeLast();
    emit(RemoveLastElement());
  }

  void deleteAllScore() {
    tAListScore.clear();
    tBListScore.clear();
    tCListScore.clear();
    tDListScore.clear();
    totalAScore = 0;
    totalBScore = 0;
    totalCScore = 0;
    totalDScore = 0;
    emit(DeleteAllScore());
  }
}
