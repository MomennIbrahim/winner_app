import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/colors.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/name_of_team_screen/widgets/teams_text_fields.dart';
import 'package:winner_app/screens/name_of_team_screen/widgets/top_score_widget.dart';

class NameOfTeamScreen extends StatelessWidget {
  const NameOfTeamScreen({
    super.key,
    required this.isThree,
    required this.isTwo,
  });
  final Map<String, bool> isThree;
  final Map<String, bool> isTwo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.0.w),
        child: Center(
          child: Container(
            height: isThree['isThree']! ? 470.h : 400.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff5C8374),
            ),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 44.h,
                      color: ColorsManger.mainDarkBlue,
                    ),
                    TeamsTextFields(isThree: isThree, isTwo: isTwo),
                    verticalSpace(51),
                    const TopScoreWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
