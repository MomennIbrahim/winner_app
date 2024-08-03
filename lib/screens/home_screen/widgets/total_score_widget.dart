import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/app_regex.dart';
import 'package:winner_app/core/helpers/extension.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/colors.dart';
import 'package:winner_app/core/theming/styles.dart';
import 'package:winner_app/core/widgets/app_button.dart';
import 'package:winner_app/core/widgets/app_text_form_field.dart';

class TotalScoreWidget extends StatelessWidget {
  const TotalScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (context.read<AppCubit>().isTwo) {
          return Container(
            decoration: const BoxDecoration(
                color: ColorsManger.scaffoldColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1.5,
                    color: Colors.black12,
                    blurStyle: BlurStyle.inner,
                    spreadRadius: 11,
                    offset: Offset(0, 3),
                  )
                ]),
            height: 180.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTotalWidget(
                      totalScore:
                          context.read<AppCubit>().totalAScore.toString(),
                      controller: context.read<AppCubit>().tAScoreController,
                      context: context,
                      onTap: () {
                        if (context
                            .read<AppCubit>()
                            .addScoreFormKey
                            .currentState!
                            .validate()) {
                          context.read<AppCubit>().addAScore();
                          context.pop();
                        }
                      }),
                  buildTotalWidget(
                    totalScore: context.read<AppCubit>().totalBScore.toString(),
                    context: context,
                    onTap: () {
                      context.read<AppCubit>().addBScore();
                      context.pop();
                    },
                    controller: context.read<AppCubit>().tBScoreController,
                  ),
                ],
              ),
            ),
          );
        } else if (context.read<AppCubit>().isThree) {
          return Container(
            decoration: const BoxDecoration(
                color: ColorsManger.scaffoldColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1.5,
                    color: Colors.black12,
                    blurStyle: BlurStyle.inner,
                    spreadRadius: 11,
                    offset: Offset(0, 3),
                  )
                ]),
            height: 180.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTotalWidget(
                      totalScore:
                          context.read<AppCubit>().totalAScore.toString(),
                      controller: context.read<AppCubit>().tAScoreController,
                      context: context,
                      onTap: () {
                        if (context
                            .read<AppCubit>()
                            .addScoreFormKey
                            .currentState!
                            .validate()) {
                          context.read<AppCubit>().addAScore();
                          context.pop();
                        }
                      }),
                  buildTotalWidget(
                    totalScore: context.read<AppCubit>().totalBScore.toString(),
                    context: context,
                    onTap: () {
                      context.read<AppCubit>().addBScore();
                      context.pop();
                    },
                    controller: context.read<AppCubit>().tBScoreController,
                  ),
                  buildTotalWidget(
                    totalScore: context.read<AppCubit>().totalCScore.toString(),
                    context: context,
                    onTap: () {
                      context.read<AppCubit>().addCScore();
                      context.pop();
                    },
                    controller: context.read<AppCubit>().tCScoreController,
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container(
            decoration: const BoxDecoration(
                color: ColorsManger.scaffoldColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1.5,
                    color: Colors.black12,
                    blurStyle: BlurStyle.inner,
                    spreadRadius: 11,
                    offset: Offset(0, 3),
                  )
                ]),
            height: 180.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTotalWidget(
                      totalScore:
                          context.read<AppCubit>().totalAScore.toString(),
                      controller: context.read<AppCubit>().tAScoreController,
                      context: context,
                      onTap: () {
                        if (context
                            .read<AppCubit>()
                            .addScoreFormKey
                            .currentState!
                            .validate()) {
                          context.read<AppCubit>().addAScore();
                          context.pop();
                        }
                      }),
                  buildTotalWidget(
                    totalScore: context.read<AppCubit>().totalBScore.toString(),
                    controller: context.read<AppCubit>().tBScoreController,
                    context: context,
                    onTap: () {
                      context.read<AppCubit>().addBScore();
                      context.pop();
                    },
                  ),
                  buildTotalWidget(
                    totalScore: context.read<AppCubit>().totalCScore.toString(),
                    controller: context.read<AppCubit>().tCScoreController,
                    context: context,
                    onTap: () {
                      context.read<AppCubit>().addCScore();
                      context.pop();
                    },
                  ),
                  buildTotalWidget(
                    totalScore: context.read<AppCubit>().totalDScore.toString(),
                    controller: context.read<AppCubit>().tDScoreController,
                    context: context,
                    onTap: () {
                      context.read<AppCubit>().addDScore();
                      context.pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  buildTotalWidget({
    required String totalScore,
    required BuildContext context,
    required Function onTap,
    required TextEditingController controller,
  }) {
    return Column(
      children: [
        Text(
          "Total",
          style: Styles.font20WhiteW400,
        ),
        SizedBox(
          width: 80.w,
          child: const Divider(
            thickness: 2,
            color: Colors.white,
          ),
        ),
        Text(
          totalScore,
          style: Styles.font28White600,
        ),
        verticalSpace(10),
        AppButton(
          text: "Add",
          textStyle: Styles.font20WhiteW400,
          onPressed: () {
            addNewScoreWidget(context, onTap, controller);
          },
          width: 75,
          height: 42,
          buttonColor: ColorsManger.mainDarkBlue,
        ),
      ],
    );
  }

  void addNewScoreWidget(BuildContext context, onTap, controller) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ColorsManger.mainDarkBlue,
        title: Form(
          key: context.read<AppCubit>().addScoreFormKey,
          child: Column(
            children: [
              AppTextFormField(
                controller: controller,
                hintText: "Add new score",
                textAlign: TextAlign.start,
                keyboardType: TextInputType.number,
                validation: (value) {
                  if (!AppRegex.hasNumber(value!)) {
                    return "Enter a valid score without any special characters";
                  }
                },
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Text(
                      "Cancel",
                      style: Styles.font20WhiteW400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTap();
                    },
                    child: Text(
                      "Ok",
                      style: Styles.font20WhiteW400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
