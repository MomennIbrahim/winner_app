import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/controller/cubit/app_cubit.dart';
import 'package:winner_app/core/helpers/app_regex.dart';
import 'package:winner_app/core/helpers/extension.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/routing/routes.dart';
import 'package:winner_app/core/theming/styles.dart';
import 'package:winner_app/core/widgets/app_button.dart';
import 'package:winner_app/core/widgets/app_text_form_field.dart';

class TopScoreWidget extends StatefulWidget {
  const TopScoreWidget({super.key});

  @override
  State<TopScoreWidget> createState() => _TopScoreWidgetState();
}

class _TopScoreWidgetState extends State<TopScoreWidget> {
  bool isCheckBoxSelected = false;
  bool hasNumber = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AppCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isCheckBoxSelected)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Text(
                "Top Score",
                style: Styles.font20BlackW600,
              ),
            ),
          verticalSpace(10),
          if (!isCheckBoxSelected)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: AppTextFormField(
                controller: context.read<AppCubit>().topScoreController,
                hintText: "What's your top score?",
                textAlign: TextAlign.start,
                validation: (value) {
                  if (!AppRegex.hasNumber(value!)) {
                    return "Enter a valid score without any special characters";
                  }
                },
                keyboardType: TextInputType.number,
              ),
            ),
          verticalSpace(15),
          GestureDetector(
            onTap: () {
              setState(() {
                isCheckBoxSelected = !isCheckBoxSelected;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Row(
                children: [
                  Text(
                    "No Top Score",
                    style: Styles.font20BlackW600,
                  ),
                  horizontalSpace(5),
                  Icon(
                    isCheckBoxSelected
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          verticalSpace(50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Row(
              children: [
                Expanded(
                    child: AppButton(
                  text: "Cancel",
                  onPressed: () {
                    context.pop();
                  },
                  height: 40,
                )),
                horizontalSpace(30),
                Expanded(
                    child: AppButton(
                  text: "Ok",
                  onPressed: () {
                    if (isCheckBoxSelected) {
                      context.read<AppCubit>().topScoreController.clear();
                    }
                    validateThenDoLogin(context);
                  },
                  height: 40,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<AppCubit>().formKey.currentState!.validate()) {
      context.pushNamed(Routes.homeScreen,
          arguments: {"isCheck": isCheckBoxSelected});
    }
  }
}
