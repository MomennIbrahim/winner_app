import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winner_app/core/helpers/spacing.dart';
import 'package:winner_app/core/theming/styles.dart';
import 'package:winner_app/core/widgets/app_app_bar.dart';
import 'package:winner_app/screens/home_screen/widgets/table_score.dart';
import 'package:winner_app/screens/home_screen/widgets/total_score_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        automaticallyImplyLeading: true,
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
                "Score 250",
                style: Styles.font32WhiteW400,
              ),
              verticalSpace(30),
              const TableScore(),
            ],
          ),
        ),
      ),
    );
  }
}
