import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/extension.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/styles.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/core/widgets/app_button.dart';
import 'package:winner_app/screens/home_screen/widgets/table_score.dart';
import 'package:winner_app/screens/home_screen/widgets/total_score_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.isCheck});

  final Map<String, bool> isCheck;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        // ignore: deprecated_member_use
        return WillPopScope(
          onWillPop: () async {
            dialogForBackButton(context);
            return true;
          },
          child: Scaffold(
            appBar: AppAppBar(
              automaticallyImplyLeading: true,
              space: 50.w,
            ),
            bottomNavigationBar: const TotalScoreWidget(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32.0.h,
                  horizontal: 32.w,
                ),
                child: Column(
                  children: [
                    Text(
                      context
                                  .read<AppCubit>()
                                  .topScoreController
                                  .text
                                  .isEmpty ||
                              isCheck["isCheck"] == true
                          ? "No top score"
                          : context.read<AppCubit>().topScoreController.text,
                      style: Styles.font32WhiteW400,
                    ),
                    verticalSpace(30),
                    TableScore(
                      isCheck: isCheck["isCheck"]!,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> dialogForBackButton(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              scrollable: true,
              content: Column(
                children: [
                  Text(
                    "Are you sure you want to exit , all score will be lost!",
                    style: Styles.font17BlackW400,
                  ),
                  verticalSpace(25),
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          text: "Yes",
                          onPressed: () {
                            context.read<AppCubit>().tAListScore.clear();
                            context.read<AppCubit>().tBListScore.clear();
                            context.read<AppCubit>().tCListScore.clear();
                            context.read<AppCubit>().tDListScore.clear();

                            context.read<AppCubit>().totalAScore = 0;
                            context.read<AppCubit>().totalBScore = 0;
                            context.read<AppCubit>().totalCScore = 0;
                            context.read<AppCubit>().totalDScore = 0;
                            context.pop();
                            context.pop();
                          },
                        ),
                      ),
                      horizontalSpace(20),
                      Expanded(
                        child: AppButton(
                          text: "No",
                          onPressed: () {
                            context.pop();
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ));
  }
}
