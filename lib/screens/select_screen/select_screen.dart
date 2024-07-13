import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/select_screen/widgets/teams_count_widget.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeamsCountWidget(teamsCount: "2 Teams"),
                TeamsCountWidget(teamsCount: "3 Teams"),
              ],
            ),
            verticalSpace(69),
            const TeamsCountWidget(teamsCount: "4 Teams"),
          ],
        ),
      ),
    );
  }
}
