import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/widgets/app_button.dart';

class OkAndCancelButtons extends StatelessWidget {
  const OkAndCancelButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Row(
        children: [
          Expanded(
              child: AppButton(
            text: "Cancel",
            onPressed: () {},
            height: 40,
          )),
          horizontalSpace(30),
          Expanded(
              child: AppButton(
            text: "Ok",
            onPressed: () {},
            height: 40,
          )),
        ],
      ),
    );
  }
}
