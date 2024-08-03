 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/theming/styles.dart';

Future<dynamic> popWinner(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          if (context.read<AppCubit>().totalAScore >=
              int.parse(context.read<AppCubit>().topScoreController.text)) {
            return alertDialogWidget(context,
                text:
                    "${context.read<AppCubit>().tAController.text.isEmpty ? "Team A" : context.read<AppCubit>().tAController.text} is winner");
          } else if (context.read<AppCubit>().totalBScore >=
              int.parse(context.read<AppCubit>().topScoreController.text)) {
            return alertDialogWidget(context,
                text:
                    "${context.read<AppCubit>().tBController.text.isEmpty ? "Team B" : context.read<AppCubit>().tBController.text} is winner");
          } else if (context.read<AppCubit>().totalCScore >=
              int.parse(context.read<AppCubit>().topScoreController.text)) {
            return alertDialogWidget(context,
                text:
                    "${context.read<AppCubit>().tCController.text.isEmpty ? "Team C" : context.read<AppCubit>().tCController.text} is winner");
          } else {
            return alertDialogWidget(context,
                text:
                    "${context.read<AppCubit>().tDController.text.isEmpty ? "Team D" : context.read<AppCubit>().tDController.text} is winner");
          }
        });
  }

  AlertDialog alertDialogWidget(BuildContext context, {required String text}) {
    return AlertDialog(
      title: Center(child: Text(text, style: Styles.font32BlackW400)),
      content: Image.asset("assets/images/win.gif"),
      backgroundColor: Colors.white70,
    );
  }