import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/colors.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/name_of_team_screen/widgets/ok_and_cancel_buttons.dart';
import 'package:winner_app/screens/name_of_team_screen/widgets/team_a_and_b_text_fields.dart';
import 'package:winner_app/screens/name_of_team_screen/widgets/top_score_widget.dart';

class NameOfTeamScreen extends StatelessWidget {
  const NameOfTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.0.w),
        child: Center(
          child: Container(
            height: 400.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff5C8374),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 44.h,
                  color: ColorsManger.mainDarkBlue,
                ),
                const TeamAAndBTextFields(),
                verticalSpace(51),
                const TopScoreWidget(),
                verticalSpace(50),
                const OkAndCancelButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
