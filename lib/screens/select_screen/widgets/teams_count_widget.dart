import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class TeamsCountWidget extends StatelessWidget {
  final String teamsCount;

  const TeamsCountWidget({
    super.key,
    required this.teamsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.w,
      height: 95.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: ColorsManger.mainDarkBlue,
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          teamsCount,
          style: Styles.font32WhiteW400,
        ),
      ),
    );
  }
}
