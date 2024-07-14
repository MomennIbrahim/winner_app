import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/styles.dart';
import 'package:winner_app/core/widgets/app_text_form_field.dart';

class TopScoreWidget extends StatefulWidget {
  const TopScoreWidget({super.key});

  @override
  State<TopScoreWidget> createState() => _TopScoreWidgetState();
}

class _TopScoreWidgetState extends State<TopScoreWidget> {
  bool isCheckBoxSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            "Top Score",
            style: Styles.font20BlackW400,
          ),
        ),
        verticalSpace(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: const AppTextFormField(
            hintText: "",
            textAlign: TextAlign.start,
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
                  style: Styles.font20BlackW400,
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
      ],
    );
  }
}
