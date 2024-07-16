import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppCubitState> {
  AppCubit() : super(AppCubitInitial());

  TextEditingController tA = TextEditingController();
  TextEditingController tB = TextEditingController();
  TextEditingController tC = TextEditingController();
  TextEditingController tD = TextEditingController();
  TextEditingController topScoreController = TextEditingController();
  final formKey = GlobalKey<FormState>();
}
